<!-- Mutlu Müşteriler Bölümü Başlangıç -->
<div id="happy-customer" class="happy-customer">
    <div class="happy-customer-area">
        <div class="container">
            <div class="row">
                @foreach($customers as $customer)
                    <div class="col-sm-6 col-lg-3 mb-4">
                        <div class="single-customer">
                            <h2 class="customer-number"><span class="counter">{{ $customer->number }}</span><span>{{ $customer->addtext }}</span></h2>
                            <p class="customer-category">{{ $customer->category }}</p>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
<!-- Mutlu Müşteriler Bölümü Bitiş -->
