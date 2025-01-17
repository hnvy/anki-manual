﻿# استبدالات الحقول {#field-replacements}

<!-- toc -->

## استبدالات أساسية {#basic-replacements}

يبدو القالب الأكثر بساطة كالتالي:

    {{Front}}

عندما تدخل نصًا بين قوسين مجعدين، يبحث أنكي عن حقل بذلك الاسم،
ويستبدل النص بالمحتوى الفعلي للحقل.

أسماء الحقول مُميِّزة لحالة الأحرف. إذا كان لديك حقل باسم `Front`، فكتابة
`{{front}}` لن تطابق هذا الحقل.

ليست قوالبك محصورة بقائمة حقول. تستطيع تضمين نصوص اعتباطية. مثلًا،
إذا كنت تدرس عواصم البلدان، وأنشأت نوع ملحوظة بحقل يسمى «بلد»،
قد تنشئ قالبًا أماميًا كالتالي:

<div dir="ltr">

    ما عاصمة {{بلد}}؟

</div>

يبدو القالب الخلفي الافتراضي كالتالي:

    {{FrontSide}}

    <hr id=answer>

    {{خلف}}

يعنى هذا إظهار النص في الجانب الأمامي، ثم خط تقسيم، ثم حقل الخلف.

يخبر قسم 'id=answer' أنكي بموقع الخط الفاصل بين السؤال والجواب.
يسمح هذا لأنكي بنقلك تلقائيًا إلى بداية الجواب عندما تضغط «إظهار الجواب»
في بطاقة طويلة (مفيد للأجهزة المحمولة ذات الشاشات الصغيرة خصوصًا).
إذا كنت لا تريد خطًا في بداية الجواب، تستطيع استخدام عنصر HTML آخر
مثل عنصر الفقرة أو عنصر div بدلًا من ذلك.

## أسطر جديدة {#newlines}

إن قوالب البطاقات مثل صفحات الويب، ما يعني أنه يلزم أمر خاص لإدخال سطر جديد.
مثلًا، إذا كتبت التالي في القالب:

<div dir="ltr">

    واحد
    اثنان

</div>

في قسم المعاينة سترى:

<div dir="ltr">

    واحد اثنان

</div>

لإضافة سطر جديد، عليك إضافة رمز &lt;br&gt; إلى نهاية السطر:

<div dir="ltr">

    واحد<br>
    اثنان

</div>

رمز br هو اختصار لـ "(line) br(eak)".

ينطبق الأمر نفسه على الحقول. إذا كنت تريد عرض حقلين في سطرين مختلفين، فستكتب:

<div dir="ltr">

    {{حقل 1}}<br>
    {{حقل 2}}

</div>

## تحويل النص إلى كلام {#text-to-speech}

تتطلب هذه الميزة أنكي 2.1.20، أو أنكي موبيل 2.0.56.
لا يدعم أنكيدرويد هذه الميزة حاليًا.

لجعل أنكي يقرأ الحقل الأمامي بالنطق الإنكليزي الأمريكي، تستطيع وضع التالي
في قالب البطاقة:

<div dir="ltr">

    {{tts en_US:أمامي}}

</div>

في ويندوز، وماك أوس، وآي أو إس، يستخدم أنكي الأصوات المبنية في النطام.
ليس هناك أصوات مبنية في لينكس، لكن يمكن توفيرها من خلال الإضافات، مثل
[هذه](https://ankiweb.net/shared/info/391644525).

لرؤية قائمة باللغات/الأصوات المتاحة، ضع التالي في قالب البطاقة:

<div dir="ltr">

    {{tts-voices:}}

</div>

إذا كانت هناك عدة أصوات تدعم لغتك، تستطيع تحديد الأصوات التي تريدها في قائمة،
وسيختار أنكي الصوت المتاح الأول. مثلًا:

<div dir="ltr">

    {{tts ja_JP voices=Apple_Otoya,Microsoft_Haruka:حقل}}

</div>

سيستخدم هذا صوت Otoya في أجهزة أبل، وصوت Haruka في أجهزة ويندوز.

تُدعم خاصية تحديد سرعة مختلفة في بعض تطبيقات تحويل النص إلى كلام:

<div dir="ltr">

    {{tts fr_FR speed=0.8:حقل}}

</div>

السرعة والأصوات اختيارية، لكن يجب تحديد اللغة.

تستطيع تخصيص الأصوات المتاحة في ماك:

- افتح نافذة «تفضيلات النظام»

- اضغط على «إمكانية الوصول»

- اضغط على «النص»

- اضغط على نافذة الأصوات المنسدلة، واختر «تخصيص».

بعض الأصوات أفضل من الأخرى، لذلك جرب أصوات مختلفة لاختيار الصوت التي تفضله.
لاحظ أن صوت سيري يمكن استخدامه من قبل تطبيقات أبل فقط. تحتاج إلى إعادة تشغيل أنكي
بعد تنصيب أصوات جديدة لكي تصبح متاحة.

في ويندوز، لا يمكن اختيار أصوات مل صوت كورتانا لأن مايكروسوفت لا توفر هذه الأصوات
للتطبيقات الأخرى.

في أنواع ملحوظات ملء الفراغات، تستطيع جعل أنكي يقرأ الأقسام المحذوفة فقط باستخدام
فلتر `cloze-only`، كالتالي:

<div dir="ltr">

    {{tts en_US:cloze-only:نص}}

</div>

فلتر cloze-only مدعوم في أنكي 2.1.29+ وأنكي موبيل 2.0.65+.

## حقول خاصة {#special-fields}

هناك حقول خاصة يمكنك تضمينها في القوالب:

<div dir="ltr">

    وسوم الملحوظة: {{Tags}}

    نوع الملحوظة: {{Type}}

    رزمة البطاقة: {{Deck}}

    رزمة البطاقة الفرعية: {{Subdeck}}

    نوع البطاقة ("أمامي"، إلخ): {{Card}}

    محتوى القالب الأمامي (صالح في الرزمة الخلفية فقط): {{FrontSide}}

</div>

لن يتسبب FrontSide بتشغيل التسجيل الصوتي الذي كان في الجانب الأمامي تلقائيًا.
إذا كنت تريد أن يُشغل التسجيل الصوتي تلقائيًا في كلا الجانبين، عليك تضمين
حقول التسجيل الصوتي في الجانب الخلفي أيضًا.

كما هو الحال في الحقول الأخرى، فإن أسماء الحقول الخاصة مُميِّزة لحالة الأحرف -
عليك استخدام `{{Tags}}` بدلًا من `{{tags}}` مثلًا.

## حقول تلميحية {#hint-fields}

بإمكانك إضافة حقل إلى الجانب الأمامي أو الخلفي مع إخفائه وخيار لإظهاره.
يدعى هذا «حقلًا تلميحيًا». قبل إضافة حقل تلميحي، لا تنسَ أنه كلما كانت
إجابة سؤال أسهل، كان احتمال تذكرك لذلك السؤال عند مقابلته في الحياة الحقيقية أصغر.
ألقِ نظرة على «مبدأ الحد الأدنى من المعلومات» في <http://www.supermemo.com/articles/20rules.htm>
قبل إكمال القراءة.

عليك أولًا إضافة حقل لوضع التلميح فيه إذا لم تفعل ذلك من قبل. انظر قسم
[حقول](../editing.md#customizing-fields) إذا لم تكن متأكدًا من كيفية فعل ذلك.

لنفترض أنك أنشأت حقلًا يدعى «حقلي»، فيمكنك إخبار أنكي بتضمينه في البطاقة مخفيًا
بشكل افتراضي بإضافة التالي إلى قالبك:

<div dir="ltr">

    {{hint:حقلي}}

</div>

سُيظهر هذا رابطًا بوسم «إظهار التلميح»؛ ستظهر محتويات الحقل عند الضغط عليه.
(لن يظهر شيء إذا كان الحقل فارغًا).

إذا أظهرت التلميح في جانب السؤال ثم أظهرت الجواب، فسيُخفى التلميح مجددًا.
إذا كنت تريد أن يظهر التلميح دائمًا عند إظهار الجواب، فعليك إزالة `{{FrontSide}}`
من القالب الخلفي وإضافة الحقول التي ترغب في إظهارها يدويًا.

ليس من الممكن حاليًا استخدام حقل تلميح للتسجيلات الصوتية - ستُشغّل التسجيلات
بغض النظر عما إذا ضغطت على رابط التلميح.

إذا كنت تريد تخصيص المظهر أو السلوك، فعليك تصميم حقل التلميح بنفسك.
لا نستطيع توفير أي دعم لفعل ذلك، لكن الكود التالي قد يكون مفيدًا:

<div dir="ltr">

    {{#خلف}}
    ﻿<a class=hint href="#"
    onclick="this.style.display='none';document.getElementById('hint4753594160').style.display='inline-block';return false;">
    أظهر الخلف</a><div id="hint4753594160" class=hint style="display: none">{{خلف}}</div>
    {{/خلف}}

</div>

## روابط قاموس {#dictionary-links}

تستطيع استخدام ميزة استبدال الحقول لإنشاء روابط قاموس. لنفترض أنك تتعلم لغة
ويسمح قاموسك المفضل على الإنترنت بالبحث عن نصوص من خلال رابط ويب كالتالي:

<div dir="ltr">

    http://example.com/search?q=myword

</div>

بإمكانك إضافة رابط تلقائي بوضع التالي في قالبك:

<div dir="ltr">

    {{عبارة}}

    <a href="http://example.com/search?q={{عبارة}}">ابحث في القاموس</a>

</div>

يسمح لك هذا القالب بالبحث عن عبارة كل ملحوظة بالضغط على الرابط عند المراجعة.
لكن هناك تنبيه مهم، فانظر القسم التالي.

## جرد HTML {#html-stripping}

الحقول مخزنة بصيغة HTML مثل القوالب. في مثال رابط القاموس السابق،
إذا احتوت العبارة كلمة "myword" بدون أي تنسيق، فسيكون الـHTML نفسه: "myword".
لكن عندما تضيف تنسيقات إلى حقولك، فالـHTML الإضافي مضمّن أيضًا. إذا كانت "myword"
مكتوبة بخط غامق مثلًا، فسيكون الـHTML "&lt;b&gt;myword&lt;/b&gt;".

قد يسبب هذا مشاكل لأمور مثل روابط القاموس. في المثال السابق،
سيصبح رابط القاموس كالتالي:

<div dir="ltr">

    <a href="http://example.com/search?q=<b>myword</b>">ابحث في القاموس</a>

</div>

في الغالب، ستُشكل الرموز الإضافية على القاموس ولن تحصل على أي نتائج.

يوفر أنكي خيار إزالة التنسيق من الحقول عند استبدالها كحل لذلك. إذا أضفت text:
قبل اسم حقل، فلن يُضمَّن أي تنسيق. لذلك فسيكون رابط القاموس الذي يعمل حتى
مع النص المنسّق كالتالي:

<div dir="ltr">

    <a href="http://example.com/search?q={{text:عبارة}}">ابحث في القاموس</a>

</div>

## نصوص تقرأ من اليمين إلى اليسار {#right-to-left-text}

إذا كنت تستخدم لغة تُقرأ من اليمين إلى اليسار، فستحتاج إلى ضبط القالب كالتالي:

<div dir="ltr">

    <div dir=rtl>{{حقل_من_اليمين_إلى_اليسار}}</div>

</div>

## وسائط و LaTeX {#media--latex}

لا يفحص أنكي مراجع الوسائط في القوالب لأنها عملية بطيئة. لهذا تبعات بخصوص تضمين
الوسائط في القوالب.

### صور/أصوات ثابتة {#static-soundsimages}

إذا كنت تريد تضمين صور أو أصوات مشتركة بين كل البطاقات (مثل شعار شركة في أعلى
كل بطاقة):

1. ضع شرطة تحتية في أول اسم الملف، مثلًا <span dir="ltr">"\_شعار.jpg"</span>.
   تخبر الشرطة التحتية أنكي بأن الملف مستخدم من قبل القالب ويجب تصديره عند مشاركة الرزمة.

2. أضف مرجعًا إلى الوسائط في القالب الأمامي أو الخلفي، مثل:

<div dir="ltr">

    <img src="_شعار.jpg">

</div>

### مراجع الحقول {#field-references}

مراجع الوسائط باستخدام الحقول غير مدعومة. قد تظهر أو لا تظهر خلال المراجعة،
ولن تعمل حين فحص الوسائط غير المستخدمة، والاستيراد/التصدير، وما إلى ذلك.
من الأمثلة التي لا تعمل:

<div dir="ltr">

    <img src="{{عبارة}}.jpg">

    [sound:{{كلمة}}]

    [latex]{{حقل 1}}[/latex]

</div>

يجب أن تضيف مراجع الوسائط إلى الحقول بدلًا من ذلك. انظر [قسم الاستيراد](../importing.md#importing-media)
لمزيد من المعلومات.

## التحقق من جوابك {#checking-your-answer}

بإمكانك مشاهدة [فيديو عن هذه الميزة](http://www.youtube.com/watch?v=5tYObQ3ocrw&yt:cc=on)
في يوتيوب.

الطريقة الأسهل للتحق من جوابك هي بالضغط على «أساسي» في أعلى يسار نافذة إضافة بطاقات،
واختيار «أساسي (مع كتابة الجواب)».

إذا نزلت رزمة مشتركة وتريد إدخال الجواب فيها، تستطيع تعديل قالب بطاقاتها.
إذا كان لها قالب كالتالي:

<div dir="ltr">

    {{كلمة أصلية}}

    {{FrontSide}}

    <hr id=answer>

    {{كلمة أجنبية}}

</div>

لإدخال الكلمة الأجنبية والتحقق مما إذا كانت صحيحة، عليك تعديل القالب الأمامي
ليبدو كالتالي:

<div dir="ltr">

    {{كلمة أصلية}}
    {{type:كلمة أجنبية}}

</div>

لاحظ أننا أضفنا <span dir="ltr"> `type:`</span> أمام الحقل الذي نريد المقارنة به. لأن FrontSide هي في
الجانب الخلفي للبطاقة، فسيظهر صندوق إظهار الجواب في الخلف كذلك.

سيظهر أنكي صندوق نص حيث يمكنك إدخال الجواب عند المراجعة، وعند الضغط على <kbd>Enter</kbd>
أو إظهار الجواب، سيظهر لك الأجزاء التي أدخلتها بشكل صحيح والأجزاء التي أدخلتها بشكل خاطئ.
سيكون حجم خط الصندوق هو الحجم الذي أعددته لذلك الحقل (من خلال زر «حقول» عند التحرير).

لا تغير هذه الميزة طريقة تقييم البطاقات، لذلك فما زال قرار تحديد مدى تذكرك للبطاقة بيدك.

يمكن أن تجرى مقارنة إدخال واحدة فقط في بطاقة. إذا أضفت النص السابق عدة مرات،
لن تعمل الميزة. كما أنها تدعم سطرًا واحدًا فقط، لذلك فهي ليست مفيدة للمقارنة مع حقل
يمتد عدة سطور.

يستخدم أنكي خطًا أحادي المسافة (monospaced) لمقارنة الجواب لكي تتحاذى
الأقسام المدخلة مع الأقسام الصحيحة. إذا كنت تريد تغيير خط مقارنة الجواب، يمكنك وضع
التالي أسفل قسم التنسيق:

<div dir="ltr">

    code#typeans { font-family: "myfontname"; }

</div>

الذي سيؤثر على الـHTML التالي والخاص بمقارنة الجواب:

<div dir="ltr">

    <code id=typeans>...</code>

</div>

يستطيع المستخدمون المتقدمون تغيير ألوان إدخال الجواب الافتراضية من خلال فئات CSS
'typeGood'، و 'typeBad' ، و 'typeMissed'. يدعم أنكي موبيل
'typeGood' و 'typeBad' لكنه لا يدعم 'typeMissed'.

إذا كنت تريد تغيير حجم صندوق النص لكنك لا تريد تغيير الخط في نافذة الحقول،
بإمكانك تغيير النسق الافتراضي باستخدام `!important`، كالتالي:

<div dir="ltr">

    #typeans { font-size: 50px !important; }

</div>

من الممكن أيضًا إدخال الجواب في بطاقات ملء الفراغات. لفعل ذلك،
أضف `{{type:cloze:Text}}` إلى القالبين الأمامي والخلفي، ليبدو القالب الخلفي كالتالي:

<div dir="ltr">

    {{cloze:نص}}
    {{type:cloze:نص}}
    {{إضافي}}

</div>

لاحظ أنه يجب إضافة هذا إلى كلا الجانبين لأن نوع ملء الفراغات لا يستخدم FrontSide.

إذا كانت هناك عدة أقسام معتمة، تستطيع فصل الإجابات في صندوق النص بفاصلة.

لن تظهر صناديق إدخال الجواب في نافذة [المعاينة](intro.md) في المتصفح.
لكنها ستظهر عند المراجعة أو في قسم المعاينة في نافذة أنواع البطاقات.
