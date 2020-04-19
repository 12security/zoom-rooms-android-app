.class public Lus/zoom/zrc/view/DialKeyboardView;
.super Landroid/widget/FrameLayout;
.source "DialKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/base/widget/keypad/KeypadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DialKeyboardView"


# instance fields
.field private callHistoryPopupWindow:Landroid/widget/PopupWindow;

.field private contactClickListener:Landroid/view/View$OnClickListener;

.field private countryCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private mContactButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDisplayedPopupWindow:Landroid/widget/PopupWindow;

.field private mFragment:Lus/zoom/zrc/base/app/ZRCDialogFragment;

.field private mInputNumber:Landroid/widget/TextView;

.field private mIvCall:Landroid/widget/ImageView;

.field private mIvDelete:Landroid/widget/ImageView;

.field private mIvDialHistory:Landroid/widget/ImageView;

.field private mKeypadGridView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

.field private mNumberTalkBack:Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;

.field private mSpcountry:Landroid/widget/ImageView;

.field private mSpcountryWrapper:Landroid/widget/LinearLayout;

.field private modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private onClickDialBtnListener:Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;

.field private pstnAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

.field private recyclerCallHistory:Landroidx/recyclerview/widget/RecyclerView;

.field private sipAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

.field private useSipCallout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 120
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Lus/zoom/zrc/view/DialKeyboardView$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/DialKeyboardView$1;-><init>(Lus/zoom/zrc/view/DialKeyboardView;)V

    iput-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 571
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lus/zoom/zrc/view/DialKeyboardView$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/DialKeyboardView$4;-><init>(Lus/zoom/zrc/view/DialKeyboardView;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 721
    new-instance v0, Lus/zoom/zrc/view/DialKeyboardView$8;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/DialKeyboardView$8;-><init>(Lus/zoom/zrc/view/DialKeyboardView;)V

    iput-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->contactClickListener:Landroid/view/View$OnClickListener;

    .line 121
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/DialKeyboardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    new-instance p2, Lus/zoom/zrc/view/DialKeyboardView$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/DialKeyboardView$1;-><init>(Lus/zoom/zrc/view/DialKeyboardView;)V

    iput-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView;->modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 571
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lus/zoom/zrc/view/DialKeyboardView$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/DialKeyboardView$4;-><init>(Lus/zoom/zrc/view/DialKeyboardView;)V

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 721
    new-instance p2, Lus/zoom/zrc/view/DialKeyboardView$8;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/DialKeyboardView$8;-><init>(Lus/zoom/zrc/view/DialKeyboardView;)V

    iput-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView;->contactClickListener:Landroid/view/View$OnClickListener;

    .line 116
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/DialKeyboardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance p2, Lus/zoom/zrc/view/DialKeyboardView$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/DialKeyboardView$1;-><init>(Lus/zoom/zrc/view/DialKeyboardView;)V

    iput-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView;->modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 571
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance p3, Lus/zoom/zrc/view/DialKeyboardView$4;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/DialKeyboardView$4;-><init>(Lus/zoom/zrc/view/DialKeyboardView;)V

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 721
    new-instance p2, Lus/zoom/zrc/view/DialKeyboardView$8;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/DialKeyboardView$8;-><init>(Lus/zoom/zrc/view/DialKeyboardView;)V

    iput-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView;->contactClickListener:Landroid/view/View$OnClickListener;

    .line 111
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/DialKeyboardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/DialKeyboardView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->onUpdateCallHistoryDisabled()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/DialKeyboardView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->onUpdateHideContactList()V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lus/zoom/zrc/view/DialKeyboardView;->onClickDialBtnListener:Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;

    return-object p0
.end method

.method static synthetic access$1100(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/adapter/CallHistoryAdapter;
    .locals 0

    .line 68
    iget-object p0, p0, Lus/zoom/zrc/view/DialKeyboardView;->sipAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    return-object p0
.end method

.method static synthetic access$1200(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/adapter/CallHistoryAdapter;
    .locals 0

    .line 68
    iget-object p0, p0, Lus/zoom/zrc/view/DialKeyboardView;->pstnAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lus/zoom/zrc/view/DialKeyboardView;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->isSipServiceRegistered()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lus/zoom/zrc/view/DialKeyboardView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->showContactDialog()V

    return-void
.end method

.method static synthetic access$1500(Lus/zoom/zrc/view/DialKeyboardView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->showSipUnavailableWarning()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/DialKeyboardView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->onUpdateSipService()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrcsdk/model/CountryCode;
    .locals 0

    .line 68
    iget-object p0, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    return-object p0
.end method

.method static synthetic access$402(Lus/zoom/zrc/view/DialKeyboardView;Lus/zoom/zrcsdk/model/CountryCode;)Lus/zoom/zrcsdk/model/CountryCode;
    .locals 0

    .line 68
    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    return-object p1
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountry:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/view/DialKeyboardView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 68
    iget-object p0, p0, Lus/zoom/zrc/view/DialKeyboardView;->recyclerCallHistory:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrc/view/DialKeyboardView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    return p0
.end method

.method static synthetic access$900(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/PopupWindow;
    .locals 0

    .line 68
    iget-object p0, p0, Lus/zoom/zrc/view/DialKeyboardView;->callHistoryPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private canShowContact()Z
    .locals 1

    .line 749
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCloudPBXSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isHideContactList()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private dismissPopupWindows()V
    .locals 1

    .line 174
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mDisplayedPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mDisplayedPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mDisplayedPopupWindow:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method private hasInputtedNumber()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    .line 338
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    .line 134
    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 136
    sget v1, Lus/zoom/zrcbox/R$layout;->dial_keyboard:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 137
    sget v1, Lus/zoom/zrcbox/R$id;->tv_number_invisible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    .line 138
    sget v1, Lus/zoom/zrcbox/R$id;->tv_number:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    new-instance v3, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;

    iget-object v4, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-direct {v3, v4, v1}, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mNumberTalkBack:Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;

    .line 140
    iget-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mNumberTalkBack:Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;

    invoke-virtual {v3}, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->setAsPhoneNumber()V

    .line 141
    sget v3, Lus/zoom/zrcbox/R$id;->iv_call:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvCall:Landroid/widget/ImageView;

    .line 142
    iget-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvCall:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    sget v3, Lus/zoom/zrcbox/R$id;->iv_delete:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDelete:Landroid/widget/ImageView;

    .line 144
    iget-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDelete:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDelete:Landroid/widget/ImageView;

    invoke-static {v3}, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;->handle(Landroid/view/View;)V

    .line 146
    sget v3, Lus/zoom/zrcbox/R$id;->iv_dial_history:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDialHistory:Landroid/widget/ImageView;

    .line 147
    iget-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDialHistory:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v3, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedDialHistoryList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p1, v2, v4}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->pstnAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    .line 149
    new-instance v3, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedSipDialHistoryList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, p1, v5, v4}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->sipAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    .line 150
    sget v3, Lus/zoom/zrcbox/R$id;->gv_dial_keyboard:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    iput-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mKeypadGridView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    .line 151
    sget v3, Lus/zoom/zrcbox/R$id;->sp_country:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountry:Landroid/widget/ImageView;

    .line 152
    sget v3, Lus/zoom/zrcbox/R$id;->sp_country_wrapper:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountryWrapper:Landroid/widget/LinearLayout;

    .line 153
    sget v3, Lus/zoom/zrcbox/R$id;->ib_contacts:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mContactButton:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountryWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTabletOrTV(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    .line 158
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 159
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$color;->phone_dial_keyboard_dark:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 162
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDelete:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 164
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDialHistory:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 167
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->mKeypadGridView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    iget-boolean v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    if-eqz v0, :cond_2

    sget-object v0, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->SIP_KEYS:Ljava/util/List;

    goto :goto_1

    :cond_2
    sget-object v0, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->PSTN_KEYS:Ljava/util/List;

    :goto_1
    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->updateKeyData(Ljava/util/List;)V

    .line 168
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->mKeypadGridView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setKeypadListener(Lus/zoom/zrc/base/widget/keypad/KeypadListener;)V

    .line 170
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->mContactButton:Landroid/view/View;

    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->contactClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isActivityActive()Z
    .locals 4

    .line 489
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    .line 490
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 491
    instance-of v1, v0, Lus/zoom/zrc/ZRCActivity;

    if-nez v1, :cond_0

    const-string v1, "DialKeyboardView"

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActivity() called: context is not ZRCActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 495
    :cond_0
    check-cast v0, Lus/zoom/zrc/ZRCActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCActivity;->isActive()Z

    move-result v0

    return v0
.end method

.method private isSipServiceRegistered()Z
    .locals 1

    .line 710
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onUpdateCallHistoryDisabled()V
    .locals 2

    .line 365
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->updateCallHistoryButton()V

    .line 367
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCallHistoryDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->sipAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setList(Ljava/util/List;)V

    .line 369
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->pstnAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private onUpdateHideContactList()V
    .locals 0

    .line 757
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->updateContactView()V

    return-void
.end method

.method private onUpdateSipService()V
    .locals 0

    .line 753
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->updateContactView()V

    return-void
.end method

.method private performDelete()V
    .locals 4

    .line 697
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getMeetingNumberFromDisplyMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    iget-boolean v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    if-eqz v1, :cond_0

    .line 702
    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getMeetingNumberFromDisplyMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->setButtonStatus()V

    :cond_2
    return-void
.end method

.method private setDefaultCountryView()V
    .locals 6

    .line 448
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/CountryCode;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    iget-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mContext:Landroid/content/Context;

    .line 450
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 449
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 452
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountry:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/CountryCode;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountry:Landroid/widget/ImageView;

    invoke-static {v1, v2, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setEmptyCountryCodeFlagDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    .line 458
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountry:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->mContext:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->country_code_in_dial_view_des:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    .line 460
    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/CountryCode;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    .line 461
    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 459
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 458
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 464
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->setButtonStatus()V

    return-void
.end method

.method private showContactDialog()V
    .locals 3

    .line 733
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mFragment:Lus/zoom/zrc/base/app/ZRCDialogFragment;

    if-nez v0, :cond_0

    const-string v0, "DialKeyboardView"

    const-string v1, "showContactDialog() called, but mFragment == null"

    const/4 v2, 0x0

    .line 734
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 737
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Ljava/lang/Class;)Landroidx/fragment/app/DialogFragment;

    return-void
.end method

.method private showCountryCodecPopupWindow()V
    .locals 6

    .line 499
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->isActivityActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 502
    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 504
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$layout;->dial_history_popup_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 505
    sget v2, Lus/zoom/zrcbox/R$id;->list_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 507
    new-instance v3, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lus/zoom/zrc/view/DialKeyboardView;->countryCodeList:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 508
    iget-object v4, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    invoke-virtual {v3, v4}, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->getDefaultPosition(Lus/zoom/zrcsdk/model/CountryCode;)I

    move-result v4

    .line 509
    invoke-virtual {v3, v4}, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->setDefaultPosition(I)V

    .line 510
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 511
    new-instance v5, Lus/zoom/zrc/view/DialKeyboardView$3;

    invoke-direct {v5, p0, v3, v0}, Lus/zoom/zrc/view/DialKeyboardView$3;-><init>(Lus/zoom/zrc/view/DialKeyboardView;Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v3, -0x1

    if-le v4, v3, :cond_1

    .line 557
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 559
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 560
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 561
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 562
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->zrc_dial_country_popup_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 563
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v3, -0x2

    .line 564
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 565
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    iget-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountry:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    sub-int/2addr v2, v5

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v3, v2, v4}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    .line 567
    iget-object v2, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountry:Landroid/widget/ImageView;

    sget v3, Lus/zoom/zrcbox/R$id;->iv_arrow:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v2, v1}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->updateArrowToCenterHorizontal(Landroid/view/View;Landroid/view/View;)V

    .line 568
    iput-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mDisplayedPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method private showDialHistoryPopupWindow()V
    .locals 7

    .line 627
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->isActivityActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 630
    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->callHistoryPopupWindow:Landroid/widget/PopupWindow;

    .line 632
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->dial_history_popup_layout_recycler:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 633
    sget v1, Lus/zoom/zrcbox/R$id;->recycler_call_history:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->recyclerCallHistory:Landroidx/recyclerview/widget/RecyclerView;

    .line 634
    iget-boolean v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    if-eqz v1, :cond_1

    .line 635
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->recyclerCallHistory:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lus/zoom/zrc/view/DialKeyboardView;->sipAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 636
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->sipAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    new-instance v2, Lus/zoom/zrc/view/DialKeyboardView$5;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/DialKeyboardView$5;-><init>(Lus/zoom/zrc/view/DialKeyboardView;)V

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setOnItemClickListener(Lus/zoom/zrc/view/adapter/CallHistoryAdapter$OnItemClickListener;)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->recyclerCallHistory:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lus/zoom/zrc/view/DialKeyboardView;->pstnAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 649
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->pstnAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    new-instance v2, Lus/zoom/zrc/view/DialKeyboardView$6;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/DialKeyboardView$6;-><init>(Lus/zoom/zrc/view/DialKeyboardView;)V

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setOnItemClickListener(Lus/zoom/zrc/view/adapter/CallHistoryAdapter$OnItemClickListener;)V

    .line 665
    :goto_0
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 666
    iget-object v2, p0, Lus/zoom/zrc/view/DialKeyboardView;->recyclerCallHistory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 667
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->recyclerCallHistory:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lus/zoom/zrc/view/RecyclerViewDivider;

    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lus/zoom/zrcbox/R$drawable;->divider_call_history:I

    invoke-direct {v2, v5, v3, v6}, Lus/zoom/zrc/view/RecyclerViewDivider;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 668
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v2, p0, Lus/zoom/zrc/view/DialKeyboardView;->recyclerCallHistory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 670
    sget v1, Lus/zoom/zrcbox/R$id;->btn_clear:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 671
    new-instance v2, Lus/zoom/zrc/view/DialKeyboardView$7;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/DialKeyboardView$7;-><init>(Lus/zoom/zrc/view/DialKeyboardView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->callHistoryPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 685
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->callHistoryPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 686
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->callHistoryPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 687
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->zrc_dial_history_popup_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 688
    iget-object v2, p0, Lus/zoom/zrc/view/DialKeyboardView;->callHistoryPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 689
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->callHistoryPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 690
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->callHistoryPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 691
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->callHistoryPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDialHistory:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAtBottom(Landroid/widget/PopupWindow;Landroid/view/View;)V

    .line 692
    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDialHistory:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$id;->iv_arrow:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->updateArrowToCenterHorizontal(Landroid/view/View;Landroid/view/View;)V

    .line 693
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->callHistoryPopupWindow:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mDisplayedPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method private showSipUnavailableWarning()V
    .locals 3

    .line 223
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCloudPBXSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 224
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->getResponseCode()I

    move-result v0

    const/16 v2, 0x191

    if-eq v0, v2, :cond_0

    const/16 v2, 0x193

    if-eq v0, v2, :cond_0

    const/16 v2, 0x197

    if-eq v0, v2, :cond_0

    .line 234
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$string;->warning_pbx_unavailable:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$string;->warning_pbx_register_error:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 240
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$string;->cannot_dial_out:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateCallHistoryButton()V
    .locals 3

    .line 374
    iget-boolean v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->sipAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCallHistoryDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDialHistory:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDialHistory:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->pstnAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCallHistoryDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDialHistory:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 384
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDialHistory:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateContactView()V
    .locals 2

    .line 741
    iget-boolean v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->canShowContact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mContactButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 744
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mContactButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cleanupNumber()V
    .locals 2

    .line 346
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 347
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->setButtonStatus()V

    :cond_0
    return-void
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 182
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 183
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mNumberTalkBack:Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->setup()V

    .line 185
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 274
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvCall:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 275
    iget-boolean p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    if-eqz p1, :cond_1

    .line 276
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->isSipServiceRegistered()Z

    move-result p1

    if-nez p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->cannot_dial_out:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 280
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->onClickDialBtnListener:Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;

    if-eqz p1, :cond_c

    .line 281
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getMeetingNumberFromDisplyMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;->onClickSipDialBtn(Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->sipAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedSipDialHistoryList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setList(Ljava/util/List;)V

    .line 283
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->sipAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 286
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->onClickDialBtnListener:Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;

    if-eqz p1, :cond_c

    .line 287
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    .line 288
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getMeetingNumberFromDisplyMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-interface {p1, v0, v1}, Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;->onClickDialBtn(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->pstnAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedDialHistoryList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setList(Ljava/util/List;)V

    .line 290
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->pstnAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->notifyDataSetChanged()V

    .line 291
    new-instance p1, Lus/zoom/zrc/view/DialKeyboardView$2;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/DialKeyboardView$2;-><init>(Lus/zoom/zrc/view/DialKeyboardView;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lus/zoom/zrc/view/DialKeyboardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 304
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDelete:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 305
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->performDelete()V

    goto/16 :goto_1

    .line 306
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDialHistory:Landroid/widget/ImageView;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_9

    .line 307
    iget-boolean p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    if-nez p1, :cond_5

    .line 308
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->countryCodeList:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 309
    :cond_4
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->callout_not_enaled:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 313
    :cond_5
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->isSipServiceRegistered()Z

    move-result p1

    if-nez p1, :cond_6

    .line 314
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->cannot_dial_out:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 318
    :cond_6
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->pstnAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    if-nez p1, :cond_7

    return-void

    .line 321
    :cond_7
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->sipAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    if-eqz p1, :cond_8

    return-void

    .line 324
    :cond_8
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->showDialHistoryPopupWindow()V

    goto :goto_1

    .line 325
    :cond_9
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountryWrapper:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_c

    .line 326
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->countryCodeList:Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    .line 331
    :cond_a
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->showCountryCodecPopupWindow()V

    goto :goto_1

    .line 327
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->intl_callout_not_enabled:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_c
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 190
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 191
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->dismissPopupWindows()V

    .line 192
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mNumberTalkBack:Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->release()V

    .line 194
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 199
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->dismissPopupWindows()V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->updateDialHistory()V

    :goto_0
    return-void
.end method

.method public onKeyClicked(Ljava/lang/String;)V
    .locals 2

    .line 245
    iget-boolean v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->countryCodeList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->callout_not_enaled:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 251
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->isSipServiceRegistered()Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->showSipUnavailableWarning()V

    return-void

    .line 257
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getMeetingNumberFromDisplyMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/DialKeyboardView;->setNumber(Ljava/lang/String;)V

    return-void
.end method

.method public setButtonStatus()V
    .locals 3

    .line 353
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->hasInputtedNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvCall:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvCall:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 358
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvDelete:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->updateCallHistoryButton()V

    return-void
.end method

.method public setCallImage(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 125
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mIvCall:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setFragment(Lus/zoom/zrc/base/app/ZRCDialogFragment;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->mFragment:Lus/zoom/zrc/base/app/ZRCDialogFragment;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 1

    .line 263
    iget-boolean v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/CountryCode;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/phonecall/PhoneCallNumberUtils;->getAsYourTypeFormattedPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mInputNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->setButtonStatus()V

    :cond_1
    return-void
.end method

.method public setOnClickDialBtnListener(Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->onClickDialBtnListener:Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;

    return-void
.end method

.method public setUseSipCallout(Z)V
    .locals 2

    .line 472
    iput-boolean p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    .line 473
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->dismissPopupWindows()V

    .line 474
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->updateContactView()V

    if-eqz p1, :cond_0

    .line 476
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountry:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountryWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountry:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mSpcountryWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 481
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->setDefaultCountryView()V

    .line 483
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->mKeypadGridView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    if-eqz p1, :cond_1

    sget-object p1, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->SIP_KEYS:Ljava/util/List;

    goto :goto_1

    :cond_1
    sget-object p1, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->PSTN_KEYS:Ljava/util/List;

    :goto_1
    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->updateKeyData(Ljava/util/List;)V

    .line 484
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialKeyboardView;->setButtonStatus()V

    return-void
.end method

.method public updateCallOutCountryCodes(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    if-eqz p2, :cond_c

    .line 394
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 400
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/CountryCode;

    .line 401
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/CountryCode;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    iput-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    goto :goto_0

    .line 405
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    if-eqz p1, :cond_3

    goto/16 :goto_4

    .line 410
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 411
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 412
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/CountryCode;

    .line 413
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/CountryCode;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    iput-object v1, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    goto :goto_1

    .line 417
    :cond_5
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    if-eqz p1, :cond_6

    goto :goto_4

    .line 422
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/CountryCode;

    const-string v1, "US"

    .line 423
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/CountryCode;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 424
    iput-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    goto :goto_2

    .line 427
    :cond_8
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    if-eqz p1, :cond_9

    goto :goto_4

    .line 432
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    const/4 p1, 0x0

    .line 433
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/CountryCode;

    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    .line 435
    :cond_a
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    if-eqz p1, :cond_b

    goto :goto_4

    .line 440
    :cond_b
    new-instance p1, Lus/zoom/zrcsdk/model/CountryCode;

    const-string v0, "US"

    const-string v1, "United States"

    const-string v2, "+1"

    const-string v3, ""

    invoke-direct {p1, v0, v1, v2, v3}, Lus/zoom/zrcsdk/model/CountryCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    goto :goto_4

    .line 396
    :cond_c
    :goto_3
    new-instance p1, Lus/zoom/zrcsdk/model/CountryCode;

    const-string v0, "US"

    const-string v1, "United States"

    const-string v2, "+1"

    const-string v3, ""

    invoke-direct {p1, v0, v1, v2, v3}, Lus/zoom/zrcsdk/model/CountryCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView;->default_countrycode:Lus/zoom/zrcsdk/model/CountryCode;

    .line 443
    :goto_4
    iput-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView;->countryCodeList:Ljava/util/List;

    .line 444
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->setDefaultCountryView()V

    return-void
.end method

.method public updateDialHistory()V
    .locals 2

    .line 212
    iget-boolean v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->sipAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedSipDialHistoryList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setList(Ljava/util/List;)V

    .line 214
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->sipAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->pstnAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedDialHistoryList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setList(Ljava/util/List;)V

    .line 217
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->pstnAdapter:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->notifyDataSetChanged()V

    .line 219
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->updateCallHistoryButton()V

    return-void
.end method

.method public updateSipServiceStatus()V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lus/zoom/zrc/view/DialKeyboardView;->useSipCallout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->isSipServiceRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lus/zoom/zrc/view/DialKeyboardView;->dismissPopupWindows()V

    :cond_0
    return-void
.end method
