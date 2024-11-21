<!-- FAQ Bölümü Başlangıç -->
<div id="faq" class="faq section bg-white">
    <div class="faq-area">
        <div class="container">
            <div class="row">
                <div class="section-title-box">
                    <p class="section-sm-title">
                        <span><img src="{{ asset('assets/images/icons/cat-foot.svg') }}" alt=""></span>SSS
                    </p>
                    <h2 class="section-title">Sık Sorulan Sorular</h2>
                </div>
            </div>
            <div class="row">
                <div class="faq-box">
                    <div class="accordion" id="accordionFaq">
                        @foreach($faqs as $index => $faq)
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="faq{{ $index }}">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapse{{ $index }}" aria-expanded="false"
                                            aria-controls="collapse{{ $index }}">
                                        {{ $faq->question }}
                                    </button>
                                </h2>
                                <div id="collapse{{ $index }}" class="accordion-collapse collapse"
                                     aria-labelledby="faq{{ $index }}" data-bs-parent="#accordionFaq">
                                    <div class="accordion-body">
                                        {{ $faq->answer }}
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- FAQ Bölümü Bitiş -->
