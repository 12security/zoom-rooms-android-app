.class public Lus/zoom/zrc/view/SendEmailView;
.super Landroid/widget/FrameLayout;
.source "SendEmailView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mETContent:Landroid/widget/EditText;

.field private mETSubject:Landroid/widget/EditText;

.field private mETTo:Landroid/widget/EditText;

.field private mRightView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/SendEmailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/SendEmailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/SendEmailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/SendEmailView;)Landroid/widget/EditText;
    .locals 0

    .line 23
    iget-object p0, p0, Lus/zoom/zrc/view/SendEmailView;->mETTo:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/SendEmailView;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lus/zoom/zrc/view/SendEmailView;->mRightView:Landroid/widget/TextView;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 77
    iput-object p1, p0, Lus/zoom/zrc/view/SendEmailView;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    sget v1, Lus/zoom/zrcbox/R$layout;->send_email_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    sget v1, Lus/zoom/zrcbox/R$id;->btnRight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lus/zoom/zrc/view/SendEmailView;->mRightView:Landroid/widget/TextView;

    .line 81
    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lus/zoom/zrc/view/SendEmailView;->mRightView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/SendEmailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/SendEmailView;->mRightView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/SendEmailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_send_email_btn_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :goto_0
    sget p1, Lus/zoom/zrcbox/R$id;->et_to:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lus/zoom/zrc/view/SendEmailView;->mETTo:Landroid/widget/EditText;

    .line 87
    sget p1, Lus/zoom/zrcbox/R$id;->et_subject:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lus/zoom/zrc/view/SendEmailView;->mETSubject:Landroid/widget/EditText;

    .line 88
    sget p1, Lus/zoom/zrcbox/R$id;->et_content:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lus/zoom/zrc/view/SendEmailView;->mETContent:Landroid/widget/EditText;

    .line 89
    iget-object p1, p0, Lus/zoom/zrc/view/SendEmailView;->mRightView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 92
    iget-object p1, p0, Lus/zoom/zrc/view/SendEmailView;->mETTo:Landroid/widget/EditText;

    new-instance v0, Lus/zoom/zrc/view/SendEmailView$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/SendEmailView$1;-><init>(Lus/zoom/zrc/view/SendEmailView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private splitEmailsFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "(?:[a-z0-9!#$%\\&\'*+/=?\\^_`{|}~.@-]*)\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\"(?:[a-z0-9!#$%\\&\'*+/=?\\^_`{|}~.@-]*)|(?:[a-z0-9!#$%\\&\'*+/=?\\^_`{|}~.@-]+)"

    const/4 v2, 0x2

    .line 50
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 51
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 52
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lus/zoom/zrc/view/SendEmailView;->mETContent:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lus/zoom/zrc/view/SendEmailView;->mETContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightTextView()Landroid/widget/TextView;
    .locals 1

    .line 130
    iget-object v0, p0, Lus/zoom/zrc/view/SendEmailView;->mRightView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lus/zoom/zrc/view/SendEmailView;->mETSubject:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lus/zoom/zrc/view/SendEmailView;->mETSubject:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 4

    .line 145
    iget-object v0, p0, Lus/zoom/zrc/view/SendEmailView;->mETTo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/SendEmailView;->splitEmailsFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 147
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 148
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ";"

    .line 149
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToView()Landroid/widget/EditText;
    .locals 1

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/view/SendEmailView;->mETTo:Landroid/widget/EditText;

    return-object v0
.end method

.method public setEmailContent(Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lus/zoom/zrc/view/SendEmailView;->mETContent:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEmailSubject(Ljava/lang/String;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/view/SendEmailView;->mETSubject:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public validateEmail(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public validateEmails(Ljava/lang/String;)Z
    .locals 3

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/SendEmailView;->splitEmailsFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 70
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/SendEmailView;->validateEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
