class LibraryController < ApplicationController
  def list
    @books = Book.all
    @patrons = Patron.all
  end

  def new_checkout
    @checkout = Checkout.new
    if params[:book_id]
      @checkout.book  = Book.find(params[:book_id])
    end
  end

  def checkout
    @checkout = Checkout.new(params.require(:checkout).permit(:book_id, :patron_id))
    @checkout.checked_out_at = DateTime.now
    if @checkout.save
      @checkout.book.available = false
      @checkout.book.save
      redirect_to root_path, notice: "#{@checkout.book.title} has been checked out of the library"
    else
      render :new_checkout
    end
  end

  def new_checkin
    @checkouts = Checkout.where("checked_in_at IS NULL")
  end

  def checkin
    @checkout = Checkout.find(params[:checkout_id])
    if @checkout.update(checked_in_at: DateTime.now)
      @checkout.book.update(available: true)
      redirect_to root_path, notice: "#{@checkout.book.title} has been checked in"
    else
      render :new_checkin
    end
  end
end
