.class Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SipCallTransferPopupWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SipCallTransferPopupWindow"


# instance fields
.field private final canWarmTransfer:Z

.field private final number:Ljava/lang/String;

.field private sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lus/zoom/zrc/phonecall/SipCallTransferFragment;)V
    .locals 6
    .param p3    # Lus/zoom/zrc/phonecall/SipCallTransferFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    .line 29
    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->number:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->popup_transfer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->transfer_popup_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 32
    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result p1

    if-le v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v1, -0x2

    .line 36
    invoke-virtual {p0, v1}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->setHeight(I)V

    .line 37
    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->setWidth(I)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->setFocusable(Z)V

    .line 39
    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->setOutsideTouchable(Z)V

    .line 40
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->setContentView(Landroid/view/View;)V

    .line 43
    sget v1, Lus/zoom/zrcbox/R$id;->layout_warm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 44
    sget v2, Lus/zoom/zrcbox/R$id;->separator_blind_transfer:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 45
    sget v3, Lus/zoom/zrcbox/R$id;->layout_blind:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 46
    sget v4, Lus/zoom/zrcbox/R$id;->layout_voicemail:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 47
    sget v5, Lus/zoom/zrcbox/R$id;->separator_voicemail:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    new-instance v5, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$1;

    invoke-direct {v5, p0, p2, p3}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$1;-><init>(Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;Ljava/lang/String;Lus/zoom/zrc/phonecall/SipCallTransferFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v5, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$2;

    invoke-direct {v5, p0, p2, p3}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$2;-><init>(Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;Ljava/lang/String;Lus/zoom/zrc/phonecall/SipCallTransferFragment;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v3, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$3;

    invoke-direct {v3, p0, p2, p3}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$3;-><init>(Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;Ljava/lang/String;Lus/zoom/zrc/phonecall/SipCallTransferFragment;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isCloudPBXSupported()Z

    move-result p2

    const/16 p3, 0x8

    if-nez p2, :cond_1

    .line 88
    invoke-virtual {v4, p3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/SipCallInfoList;->isFull()Z

    move-result p2

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->canWarmTransfer:Z

    .line 93
    iget-boolean p1, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->canWarmTransfer:Z

    if-nez p1, :cond_2

    .line 94
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {v2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;
    .locals 0

    .line 19
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    return-object p0
.end method


# virtual methods
.method getNumber()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->number:Ljava/lang/String;

    return-object v0
.end method

.method isCanWarmTransfer()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->canWarmTransfer:Z

    return v0
.end method
