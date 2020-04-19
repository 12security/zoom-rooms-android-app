.class public Lus/zoom/zrc/view/RoomSystemAddressView;
.super Landroid/widget/FrameLayout;
.source "RoomSystemAddressView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RoomSystemAddressView"


# instance fields
.field private bnCall:Landroid/widget/Button;

.field private bnCancel:Landroid/widget/Button;

.field private callRoomSystemViewListener:Lus/zoom/zrc/view/RoomSystemAddressViewListener;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private errorColor:I

.field private etAddress:Landroid/widget/EditText;

.field private layoutRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private rbH323:Landroid/view/View;

.field private rbSIP:Landroid/view/View;

.field private rgProtocol:Landroid/widget/RadioGroup;

.field private tvStatus:Landroid/widget/TextView;

.field private tvStatusDefaultColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance p1, Lus/zoom/zrc/view/RoomSystemAddressView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/RoomSystemAddressView$1;-><init>(Lus/zoom/zrc/view/RoomSystemAddressView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->clickListener:Landroid/view/View$OnClickListener;

    .line 77
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance p1, Lus/zoom/zrc/view/RoomSystemAddressView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/RoomSystemAddressView$1;-><init>(Lus/zoom/zrc/view/RoomSystemAddressView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->clickListener:Landroid/view/View$OnClickListener;

    .line 82
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance p1, Lus/zoom/zrc/view/RoomSystemAddressView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/RoomSystemAddressView$1;-><init>(Lus/zoom/zrc/view/RoomSystemAddressView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->clickListener:Landroid/view/View$OnClickListener;

    .line 87
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->init()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/RoomSystemAddressView;)Lus/zoom/zrc/view/RoomSystemAddressViewListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->callRoomSystemViewListener:Lus/zoom/zrc/view/RoomSystemAddressViewListener;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/RoomSystemAddressView;)Landroid/widget/Button;
    .locals 0

    .line 41
    iget-object p0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCall:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/RoomSystemAddressView;)Landroid/widget/EditText;
    .locals 0

    .line 41
    iget-object p0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->etAddress:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/RoomSystemAddressView;)Landroid/widget/RadioGroup;
    .locals 0

    .line 41
    iget-object p0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->rgProtocol:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/RoomSystemAddressView;)Landroid/widget/Button;
    .locals 0

    .line 41
    iget-object p0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCancel:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/RoomSystemAddressView;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->reset()V

    return-void
.end method

.method private changeStatusColor2Error()V
    .locals 2

    .line 313
    iget v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->errorColor:I

    if-nez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->getErrorColor()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->errorColor:I

    .line 316
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatus:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->errorColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private changeStatusColor2Normal()V
    .locals 2

    .line 309
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatusDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private checkAndChangeCallToDone()V
    .locals 3

    .line 342
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isSituationMeetingListAndError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCall:Landroid/widget/Button;

    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->done:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCall:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private enableInput(Z)V
    .locals 4

    .line 320
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getSituation()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 325
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->etAddress:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 326
    iget-object v2, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->etAddress:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setAlpha(F)V

    .line 327
    iget-object v2, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->etAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 329
    iget-object v2, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->rgProtocol:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 330
    iget-object v2, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->rbH323:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 331
    iget-object v2, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->rbSIP:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    if-nez v0, :cond_2

    .line 335
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 337
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCall:Landroid/widget/Button;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->etAddress:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 338
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->checkAndChangeCallToDone()V

    return-void
.end method

.method private enableInputWhenAccepted()V
    .locals 1

    const/4 v0, 0x1

    .line 279
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    return-void
.end method

.method private getErrorColor()I
    .locals 4

    .line 358
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lus/zoom/zrcbox/R$attr;->roomSystemErrorColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->error_red:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 360
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method private init()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->room_system_address_view:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    sget v0, Lus/zoom/zrcbox/R$id;->invite_status:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatus:Landroid/widget/TextView;

    .line 93
    sget v0, Lus/zoom/zrcbox/R$id;->invite_by_room_content:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->etAddress:Landroid/widget/EditText;

    .line 94
    sget v0, Lus/zoom/zrcbox/R$id;->rg_protocol:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->rgProtocol:Landroid/widget/RadioGroup;

    .line 95
    sget v0, Lus/zoom/zrcbox/R$id;->rb_h323:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->rbH323:Landroid/view/View;

    .line 96
    sget v0, Lus/zoom/zrcbox/R$id;->rb_sip:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->rbSIP:Landroid/view/View;

    .line 97
    sget v0, Lus/zoom/zrcbox/R$id;->invite_operation:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCall:Landroid/widget/Button;

    .line 98
    sget v0, Lus/zoom/zrcbox/R$id;->bn_cancel:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCancel:Landroid/widget/Button;

    .line 99
    sget v0, Lus/zoom/zrcbox/R$id;->layout_room_system_address_view:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->layoutRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCall:Landroid/widget/Button;

    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatusDefaultColor:Landroid/content/res/ColorStateList;

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->etAddress:Landroid/widget/EditText;

    new-instance v1, Lus/zoom/zrc/view/RoomSystemAddressView$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/RoomSystemAddressView$2;-><init>(Lus/zoom/zrc/view/RoomSystemAddressView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private reset()V
    .locals 3

    .line 299
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatus:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->changeStatusColor2Normal()V

    .line 301
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->rgProtocol:Landroid/widget/RadioGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->rbH323:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->rbSIP:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCall:Landroid/widget/Button;

    iget-object v2, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->etAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 305
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    return-void
.end method

.method private setStatusText(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 365
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 366
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 367
    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    .line 368
    iget-object v2, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v2, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatus:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 374
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    .line 375
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatus:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private showCancelAndEnable(Z)V
    .locals 4

    .line 350
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCall:Landroid/widget/Button;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCancel:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 353
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCancel:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private updateProtocolAndAddress(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->etAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->etAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getAddressToCall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->etAddress:Landroid/widget/EditText;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getAddressToCall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getProtocolType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 293
    :pswitch_0
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->rgProtocol:Landroid/widget/RadioGroup;

    sget v0, Lus/zoom/zrcbox/R$id;->rb_sip:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->rgProtocol:Landroid/widget/RadioGroup;

    sget v0, Lus/zoom/zrcbox/R$id;->rb_h323:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public moveUp(Z)V
    .locals 4

    .line 128
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 129
    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->layoutRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    .line 131
    sget p1, Lus/zoom/zrcbox/R$id;->invite_by_room_content:I

    sget v3, Lus/zoom/zrcbox/R$id;->invite_status:I

    invoke-virtual {v0, p1, v1, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 132
    sget p1, Lus/zoom/zrcbox/R$id;->layout_operate:I

    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    goto :goto_0

    .line 134
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$id;->invite_by_room_content:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 135
    sget p1, Lus/zoom/zrcbox/R$id;->layout_operate:I

    invoke-virtual {v0, p1, v2, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 137
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->layoutRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public setListener(Lus/zoom/zrc/view/RoomSystemAddressViewListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->callRoomSystemViewListener:Lus/zoom/zrc/view/RoomSystemAddressViewListener;

    return-void
.end method

.method public updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V
    .locals 5

    .line 144
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_10

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_e

    const/16 v1, 0x72

    if-eq v0, v1, :cond_d

    const/16 v1, 0x78

    if-eq v0, v1, :cond_c

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_b

    const/16 v1, 0x3f2

    const/4 v4, 0x4

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_5

    .line 202
    :pswitch_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isSituationInMeeting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 205
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$string;->room_system_calling_status_cancelled:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    .line 207
    :goto_0
    invoke-direct {p0, v2}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 208
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    goto/16 :goto_5

    .line 188
    :pswitch_1
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->updateProtocolAndAddress(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    .line 189
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isSituationInMeeting()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    sget p1, Lus/zoom/zrcbox/R$string;->room_system_calling_status_calling:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    goto :goto_1

    .line 192
    :cond_1
    sget p1, Lus/zoom/zrcbox/R$string;->connecting:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    .line 194
    :goto_1
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 195
    invoke-direct {p0, v2}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    goto/16 :goto_5

    .line 175
    :pswitch_2
    sget p1, Lus/zoom/zrcbox/R$string;->room_system_calling_status_failed:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    .line 176
    invoke-direct {p0, v2}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 177
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    .line 178
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->changeStatusColor2Error()V

    goto/16 :goto_5

    .line 217
    :pswitch_3
    sget p1, Lus/zoom/zrcbox/R$string;->room_system_calling_status_time_out:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    .line 218
    invoke-direct {p0, v2}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 219
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    goto/16 :goto_5

    .line 211
    :pswitch_4
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->updateProtocolAndAddress(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    .line 212
    sget p1, Lus/zoom/zrcbox/R$string;->room_system_calling_status_ringing:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    .line 213
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 214
    invoke-direct {p0, v2}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    goto/16 :goto_5

    .line 236
    :pswitch_5
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isSituationInMeeting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    sget p1, Lus/zoom/zrcbox/R$string;->call_accepted:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    .line 238
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->supportDialDtmf()Z

    move-result p1

    if-nez p1, :cond_2

    .line 240
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInputWhenAccepted()V

    return-void

    .line 243
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "RoomSystemAddressView"

    const-string v0, "invite room StatusAccepted, but meetingInfo == null"

    .line 245
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 248
    :cond_3
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWebinar()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 249
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInputWhenAccepted()V

    return-void

    .line 253
    :cond_4
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 254
    invoke-direct {p0, v2}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    .line 255
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->bnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_5

    .line 257
    :cond_5
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->updateProtocolAndAddress(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    .line 258
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getPreviousStatus()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 259
    sget p1, Lus/zoom/zrcbox/R$string;->room_system_calling_status_ringing:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    goto :goto_2

    .line 261
    :cond_6
    sget p1, Lus/zoom/zrcbox/R$string;->connecting:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    .line 263
    :goto_2
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 264
    invoke-direct {p0, v2}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    goto/16 :goto_5

    .line 149
    :pswitch_6
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->updateProtocolAndAddress(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    .line 150
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    invoke-direct {p0, v2}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 152
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    goto/16 :goto_5

    .line 273
    :cond_7
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_5

    .line 222
    :cond_8
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isSituationInMeeting()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 223
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getZrcUserChangedEntity()Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;

    move-result-object p1

    .line 224
    invoke-static {p1}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->isChangedToSilent(Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 225
    sget p1, Lus/zoom/zrcbox/R$string;->call_accepted:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    goto :goto_3

    .line 227
    :cond_9
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 230
    :cond_a
    sget p1, Lus/zoom/zrcbox/R$string;->room_system_calling_status_cancelled:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    .line 232
    :goto_3
    invoke-direct {p0, v2}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 233
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    goto :goto_5

    .line 268
    :cond_b
    sget p1, Lus/zoom/zrcbox/R$string;->connected:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    .line 269
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 270
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    goto :goto_5

    .line 198
    :cond_c
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 199
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    goto :goto_5

    .line 181
    :cond_d
    sget p1, Lus/zoom/zrcbox/R$string;->crc_error_exceed_free_port:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    .line 182
    invoke-direct {p0, v2}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 183
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    .line 184
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->changeStatusColor2Error()V

    goto :goto_5

    .line 163
    :cond_e
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->updateProtocolAndAddress(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    .line 164
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isSituationInMeeting()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 165
    sget p1, Lus/zoom/zrcbox/R$string;->room_system_calling_status_calling:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    goto :goto_4

    .line 167
    :cond_f
    sget p1, Lus/zoom/zrcbox/R$string;->connecting:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    .line 169
    :goto_4
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 170
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    .line 172
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->changeStatusColor2Normal()V

    goto :goto_5

    .line 155
    :cond_10
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->updateProtocolAndAddress(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    .line 156
    sget p1, Lus/zoom/zrcbox/R$string;->room_system_calling_status_calling:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->setStatusText(I)V

    .line 157
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/RoomSystemAddressView;->enableInput(Z)V

    .line 158
    invoke-direct {p0, v2}, Lus/zoom/zrc/view/RoomSystemAddressView;->showCancelAndEnable(Z)V

    .line 160
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemAddressView;->changeStatusColor2Normal()V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x270e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
