# البحث {#searching}

<!-- toc -->

تستخدم نافذة متصفح أنكي وميزة الرزم المفلترة الطريقة نفسها للبحث عن بطاقات أو ملحوظات معينة.

## عبارات بحث بسيطة {#simple-searches}

عندما تدخل نصًا ما في صندوق البحث، يبحث أنكي عن ملحوظات مطابقة ويظهر بطاقاتها.
يبحث أنكي في كل حقول الملحوظات، لكنه لا يبحث في الوسوم (أكمل القراءة في هذا القسم
لتعرف كيف تبحث عن وسوم معينة). بعض الأمثلة:

`كلب`\
يبحث عن «كلب» - يطابق كلمات مثل «كلبي» و «الكلب» أيضًا.

`كلب قطة`\
يبحث عن الملحوظات التي تحتوي على كل من «كلب» و«قطة»، مثل «تشاجر الكلب مع القطة».

`كلب or قطة`\
يبحث عن ملحوظات تحتوي على «كلب» أو «قطة».

`كلب (قطة or فأرة)`\
يبحث عن ملحوظات تحتوي على كلب وقطة، أو كلب وفأرة.

`-قطة`\
يبحث عن محلوظات لا تحتوي على كلمة «قطة».

`-قطة -فأرة`\
يبحث عن ملحوظات لا تحتوي على أي من «قطة» و «فأرة».

`-(قطة or فأرة)`\
مثل المثال السابق.

`"قط الجيران"`\
يبحث عن ملحوظات تحتوي على العبارة «قط الجيران» نفسها بالضبط، مثل «قط الجيران المزعج»،
ولكن ليس «قط الشارع».

`-"قط الجيران"`\
يبحث عن ملحوظات لا تحتوي على عبارة «قط الجيران».

`ك_ب`\
يبحث عن ملحوظات تحتوي على ك، &gt;حرف ما&lt;، ب، مثل كلب، كرب، وما إلى ذلك.

`ك*ب`\
يبحث عن ملحوظات تحتوي على ك، &gt;0 حرف أو أكثر&lt;، ب، مثل كب، كلب، كاسب، وما إلى ذلك.

`w:كلب`\
يبحث عن «كلب» ككلمة منفصلة - يطابق «كلب»، لكن ليس «كلبي» أو «كلبان».
يتطلب أنكي 2.1.24+ أو أنكي موبيل 2.1.61+.

`w:كلب*`\
يطابق «كلب» و «كلبي»، ولكن ليس «الكلب».

`w:*كلب`\
يطابق «كلب» و «الكلب»، ولكن ليس «كلبي».

نقاط تجب ملاحظتها حول الأعلى:

- تُفصل عبارات البحث بمسافات.

- عند توفير عبارات بحث عديدة، يبحث أنكي عن الملحوظات التي تطابق كل العبارات -
  توضع عبارة 'and' بين كل عبارة ضمنيًا. في أنكي 2.1.24+ وأنكي موبيل 2.0.60+ تستطيع كتابتها
  بالشكل الواضح («كلب and قطة» هي مثل «كلب قطة»)، لكن الإصدارات القديمة تعامل "and"
  كأي كلمة تبحث عنها.

- تستطيع استخدام "or" إذا كنت تريد أن تتطابق عبارة واحدة على الأقل.

- تستطيع وضع علامة ناقص قبل عبارة لإيجاد ملحوظات لا تطابق هذه العبارة.

- تستطيع جمع عبارات البحث بوضعها بين أقواس، مثل **كلب (قطة or فأرة)**.
  يكون هذا مهمًا عند جمع عبارات OR و AND - المثال السابق مع الأقواس سيطابق إما
  «كلب قطة» أو «كلب فأرة»، بينما سيطابق إما «كلب and قطة» أو «فأرة» بدون أقواس.

- يقدر أنكي على البحث في التنسيق في [حقل الفرز](editing.md#customizing-fields) الذي أعددته فقط.
  مثلًا، إذا أضفت «**مثـ**ال» لحقل من حقولك، فلن يطابق عند البحث عن «مثال» إلا إذا كان هذا الحقل حقل فرز.
  إذا كانت كلمة غير منسقة، أو لا يتغير التنسيق في منتصف الكلمة، فسيكون أنكي قادرًا على إيجادها في أي حقل.

- عبارات البحث العادية غير حساسة لحالة الأحرف للأحرف اللاتينية؛ a-z تطابق A-Z، والعكس صحيح.
  الحروف الأخرى مثل السيريلية حساسة لحالة الأحرف في البحث العادي، لكن يمكن جعلها غير حساسة
  بالبحث ككلمة منفصلة أو كتعبير نمطي (<span dir="ltr">w:, re:</span>).

## الحصر بحقل {#limiting-to-a-field}

تستطيع أيضًا البحث بحقول محددة. عكس عبارات البحث في الأعلى، يتطلب البحث في الحقول
مطابقة تامة بشكل افتراضي.

`أمام:كلب`\
يبحث عن ملحوظات بحقل أمامي يحتوي على «كلب» فقط. لن يتطابق حقل يحتوي على «الكلب».

`أمام:*كلب*`\
يبحث عن ملحوظات بحقل أمامي يحتوي على «كلب» في أي مكان.

`أمام:`\
يبحث عن ملحوظات لها حقل أمامي فارغ.

`أمام:_*`\
يبحث عن ملحوظات لها حقل أمامي غير فارغ.

`أمام:*`\
يبحث عن ملحوظات لها حقل باسم «أمام»، سواء كان فارغًا أم لا.

`فر*:نص`\
يبحث عن ملحوظات لها حقل يبدأ اسمه بـ «فر». يتطلب أنكي 2.1.24+ أو أنكي موبيل 2.1.60+.

## الوسوم، والرزم، والبطاقات، والملحوظات {#tags-decks-cards-and-notes}

`tag:حيوان`\
يبحث عن ملحوظات لها وسم «حيوان».

`tag:none`\
يبحث عن ملحوظات ليس لها وسوم.

`tag:ani*`\
يبحث عن ملحوظات لها وسوم تبدأ أسماؤها بـ "ani".

`deck:فرنسي`\
يبحث عن بطاقات في رزمة فرنسي، أو رزم فرعية مثل فرنسي::مفردات.

`deck:فرنسي -deck:فرنسي::*`\
يبحث عن بطاقات في رزمة فرنسي، ولكن ليس في رزمها الفرعية.

`deck:"فرنسي مفردات"`\
مثال عن البحث في رزمة عندما يكون هناك فراغات في اسم هذه الرزمة.

`"deck:فرنسي مفردات"`\
مثل المثال السابق.

`deck:filtered`\
يبحث في الرزم المفلترة فقط.

`-deck:filtered`\
يبحث في الرزم العادية فقط.

`card:forward`\
يبحث عن البطاقات غير المعكوسة.

`card:1`\
يبحث عن بطاقات برقم قالبها. مثلًا، للبحث عن عبارة ملء الفراغات الثانية في ملحوظة،
ستستخدم card:2.

`note:أساسي`\
يبحث عن بطاقات لها نوع الملحوظة «أساسي».

## تجاهل الحركات {#ignoring-accentscombining-characters}

يتطلب أنكي 2.1.24+ أو أنكي موبيل 2.0.60+.

تستطيع استخدام `nc:` لحذف الحركات (اختصار لـ "no combining"). على سبيل المثال:

`nc:uber`\
يطابق ملحوظات تحتوي على "uber"، و "über"، و "Über" وما إلى ذلك.

`nc:は`\
يطابق "は"، و "ば"، و "ぱ".

إن عبارات البحث التي تتجاهل الحركات أبطأ من عبارات البحث العادية.

## التعابير النمطية {#regular-expressions}

يدعم أنكي 2.1.24+ وأنكي موبيل 2.0.60+ البحث في الملحوظات باستخدام «التعابير النمطية»،
وهي طريقة قياسية وقوية للبحث في النصوص.

ابدأ عبارة البحث بـ `re:` للبحث باستخدام التعابير النمطية. لتسهيل بعض الأمور، يعامل أنكي
التالي كـ[نص خام](#raw-input)، لذلك خذ القواعد المذكورة هناك في عين الاعتبار.

بعض الأمثلة:

`"re:(شيء|ما).*آخر"`\
يبحث عن ملحوظات تحتوي على «شيء» أو «ما»، متبوعًا بـ 0 حرف أو أكثر، ثم «آخر».

`re:\d{3}`\
يبحث عن ملحوظات تحتوي على ثلاث أرقام على التوالي.

يمكن حصر التعابير النمطية بحقل محدد. لاحظ أنه عكس البحث العادي في حقول محددة،
لا تتطلب التعابير النمطية في الحقول تطابقًا تامًا. مثلًا:

`أمام:re:[a-c]1`\
يطابق الحروف الصغيرة أو الكبيرة a1، أو B1، أو c1 الموجودة في أي موضع في الحقل «أمام».

`أمام:re:^[a-c]1$`\
مثل المثال السابق، لكن لن يتطابق إذا كان هناك أي نص قبل a1/b1/c1 أو بعده.

تستطيع تعلم المزيد عن التعابير النمطية هنا: <https://regexone.com/lesson/introduction_abcs>

يرجى الانتباه إلى بعض النقاط:

- البحث غير حساس لحالة الأحرف بشكل افتراضي؛ ضع (?-i) في مقدمة عبارة البحث لجعل البحث
  حساسًا لحالة الأحرف.
- بعض الرموز مثل رمز المسافة ورمز نهاية السطر قد تُمثّل بشكل مختلف في HTML -
  تستطيع استخدام محرر HTML في نافذة التحرير لرؤية محتوى HTML المضمن.
- لخصائص ميزة التعابير النمطية المستخدمة في أنكي،انظر وثائق حزمة regex: <https://docs.rs/regex/1.3.9/regex/#syntax>

## حالة البطاقة {#card-state}

`is:due`\
بطاقات المراجعة والتعلم التي يُنتظر دراستها.

`is:new`\
البطاقات الجديدة.

`is:learn`\
البطاقات في طور التعلم.

`is:review`\
المراجعات (المستحقة وغير المستحقة) والبطاقات الساقطة.

`is:suspended`\
البطاقات التي أُوقفَت يدويًا.

`is:buried`\
البطاقات التي دفنت، إما [تلقائيًا](studying.md#siblings-and-burying) أو يدويًا.

لاحظ أنه في [المجدول الجديد](https://faqs.ankiweb.net/the-anki-2.1-scheduler.html)،
يميز أنكي بين البطاقات المدفونة يدويًا والبطاقات المدفونة تلقائيًا لكي يمكنك
من دفن مجموعة بدون الأخرى.

تصنف البطاقات الساقطة ضمن أصناف عدة من الأعلى، لذلك فمن المفيد جمعها للحصول على
نتائج أدق:

`is:learn is:review`\
البطاقات الساقطة والتي هي بانتظار إعادة التعلم.

`-is:learn is:review`\
بطاقات المراجعة، باستثناء البطاقات الساقطة.

`is:learn -is:review`\
البطاقات في طور التعلم لأول مرة.

`flag:1`\
بطاقات لها مؤشر أحمر

`flag:2`\
بطاقات لها مؤشر برتقالي

`flag:3`\
بطاقات لها مؤشر أخضر

`flag:4`\
بطاقات لها مؤشر أزرق

`flag:5`\
بطاقات لها مؤشر زهري

`flag:6`\
بطاقات لها مؤشر فيرزوي

`flag:7`\
بطاقات لها مؤشر بنفسجي

## خصائص البطاقات {#card-properties}

`prop:ivl>=10`\
البطاقات بفاصل 10 أيام أو أكثر.

`prop:due=1`\
البطاقات المستحقة غدًا.

`prop:due=-1`\
البطاقات التي كانت مستحقة البارحة ولم تُجَب بعد.

`prop:due>-1 prop:due<1`\
البطاقات المستحقة بين البارحة والغد.

`prop:reps<10`\
البطاقات التي أجيبت أقل من 10 مرات.

`prop:lapses>3`\
البطاقات التي نقلت إلى طور إعادة التعلم أكثر من 3 مرات.

`prop:ease!=2.5`\
البطاقات الأسهل أو الأصعب من السهولة الافتراضية.

لاحظ أن due يطابق بطاقات المراجعة وبطاقات التعلم بفاصل يوم أو أكثر. البطاقات
طور التعلم ذات فواصل صغيرة مثل 10 دقائق ليست مضمنة.

## الأحداث الأخيرة {#recent-events}

### المضافة {#added}

`added:1`\
البطاقات المضافة اليوم.

`added:7`\
البطاقات المضافة آخر أسبوع.

يفحص هذا تاريخ إنشاء البطاقة وليس تاريخ إنشاء الملحوظة، لذلك فالبطاقات التي أنشئت
في الوقت المحدد ستُضمَّن حتى لو أضيفت ملحوظاتها منذ وقت طويل.

### المحررة {#edited}

`edited:n`\
البطاقات التي أضيف نص ملحوظاتها أو عُدِّل في آخر n يوم.

يتطلب أنكي 2.1.28+ أو أنكي موبيل 2.0.64+.

### المجابة مؤخرًا {#answered}

`rated:1`\
البطاقات المجابة اليوم.

`rated:1:2`\
البطاقات المجابة بـ «صعب» (2) اليوم.

`rated:7:1`\
البطاقات المجابة بـ «مجددًا» في آخر سبع أيام.

`rated:31:4`\
البطاقات المجابة بـ «سهل» في آخر شهر.

عبارات بحث التقييم كانت مقيدة بمدة 31 يوم قبل إصدار 2.1.39.

### أول إجابة {#first-answered}

في الإصدار 2.1.45 وما فوق، تستطيع أيضًا البحث عن المراجعة الأولى فقط:

`introduced:1`
البطاقات المجابة لأول مرة اليوم.

`introduced:365`
البطاقات المجابة لأول مرة في آخر 365 يوم.

## البحث عن الحروف الخاصة {#matching-special-characters}

كُتِب هذا القسم لأنكي 2.1.36+ - لا تدعم الإصدارات السابقة إيقاف تفعيل الحروف الخاصة في بعض الأحوال.

كما وضح في القسم السابق، لبعض الحروف مثل `*` و `_` و `"` معنى خاص في أنكي.
إذا كنت تريد البحث عن هذه الحروف، فعليك إخبار أنكي ألا يعاملها بشكل خاص.

- _مسافة_\
  للبحث عن نص يحوي مسافات، أحط `"العبارة كاملة"` بعلامات اقتباس مزدوجة. إذا كانت عبارة بحث تحوي نقطتين رأسيتين،
  فتستطيع أيضًا إحاطة فقط `القسم:"بعد النقطتين الرأسيتين"`.

- `"` و `*` و `_`\
  أضف شرطة مائلة للخلف قبل الحروف لمعاملتها حرفيًا. مثلًا، `_` يطابق أي حرف واحد، بينما
  `\_` يطابق حرف الشرطة التحتية حرفيًا.

- `\`\
  لأن حرف الشرطة المائلة للخلف يستخدم لإزالة المعنى الخاص من الحروف الخاصة، فهو أيضًا يعامل معاملة خاصة.
  إذا كنت تريد البحث عن هذا الحرف حرفيًا، استخدم `\\` بدلًا من `\`.

- `(` و `)`\
  تستطيع البحث عن الأقواس إما بإحاطة العبارة كاملة بعلامات اقتباس، أو/و باستخدام شرطة مائلة للخلف.
  هذا يعني أن `"نص(ما)"` و `نص\(ما\)` و `"نص\(ما\)"` كلها متكافئة،
  لكن `نص(ما)` مختلفة.

- `-`\
  بدء عبارة بحث بـ `-` عادة يعكسه: `-كلب` تطابق كل شيء ما عدا كلب مثلًا.
  إذا كنت تريد تضمين حرف شرطة فعلي، تستطيع إما استخدام شرطة مائلة للخلف، أو إحاطة
  النص بعلامات اقتباس، مثل `\-.-` أو `"-.-"`.

- `:`\
  يجب إزالة المعنى الخاص للنقط الرأسية إلا إذا سبقت بنقطتين رأسيتين تحتفظان بمعناهما الخاص.
  مثلًا، `w:e:b` هي بحث كلمة كاملة لـ `e:b`، لكن `w\:e\:b` هي بحث لـ `w:e:b` حرفيًا،
  و `w\:e:b` تبحث في الحقل `w:e` عن `b` (انظر [عبارات بحث الحقول](#limiting-to-a-field)).

### المدخلات الخام {#raw-input}

يعامل النص المسبوق ببعض الكلمات (مثل `re:`) كنص خام. هذا يعني أن الحروف المذكورة في الأعلى
تخسر معناها الخاص إلى حد كبير. في هذا السياق، تلزم فقط بعض الإجراءات لإزالة معنى الحروف الخاص ومنع الالتباس:

- `"` يجب أن يزال معناها الخاص.

- تتطلب المسافات والأقواس ذات المعنى الخاص أن تكون عبارة البحث محاطاة بعلامات اقتباس.

- يجب ألا تنتهي عبارة البحث بعدد فردي من الشرطات المائلة للخلف.

## معرفات الكائنات {#object-ids}

`nid:123`\
كل بطاقات الملحوظة ذات معرف الملحوظة 123.

`cid:123,456,789`\
البطاقة ذات معرفات البطاقات 123، 456، 789.

يمكن إيجاد معرفات البطاقة والملحوظة من خلال نافذة [معلومات البطاقة](stats.md) في المتصفح.
قد تكون عبارات البحث هذه مفيدة أيضًا عند تطوير الإضافات أو التفاعل مع قاعدة البيانات عن قرب.

لا تعمل معرفات الكائنات في تطبيقات الهاتف المحمول، وليست مخصصة للاستخدام في الرزم
المفلترة في الوقت الحاضر.
