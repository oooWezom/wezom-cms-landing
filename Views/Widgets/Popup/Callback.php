<div class="hidden-wrapper">
    <div>
        <div class="order-pop">
            <h2>Заказать</h2>
            <div class="form js-form" data-form="true" data-ajax="service">
                <div class="control-holder control-holder--text">
                    <input required type="text" data-name="name" id="order-site" data-rule-word="true" data-rule-minlength="2" name="order-site" placeholder="Введите имя">
                    <span class="form__info">Введите имя</span>
                </div>
                <div class="control-holder control-holder--text">
                    <input required type="email" data-name="email" id="order-email" data-rule-email="true" name="order-email" placeholder="Введите адрес эл. почты">
                    <span class="form__info">Адрес эл. почты</span>
                </div>
                <div class="control-holder control-holder--text">
                    <input required type="tel" data-name="phone" id="order-phone" data-rule-phoneRU="true" name="order-phone" placeholder="Введите телефон">
                    <span class="form__info">Телефон</span>
                </div>
                <div class="control-holder control-holder--text">
                    <textarea id="order-text" data-name="text" data-rule-minlength="5" name="order-text" placeholder="Причина обращения к нам, особенные пожелания, на что необходимо сделать акцент, предпочтительный способ связи и т.д. (Это поле не обязательно для заполнения)"></textarea>
                    <span class="form__info">Примечание</span>
                </div>
                <?php if(array_key_exists('token', $_SESSION)): ?>
                    <input type="hidden" data-name="token" value="<?php echo $_SESSION['token']; ?>" />
                <?php endif; ?>
                <input type="hidden" data-name="service" value="<?php echo $id; ?>" />
                <div class="control-holder control-holder--text">
                    <button class="button js-form-submit button--red">
                        <span>Заказать</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
