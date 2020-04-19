.class public abstract Lus/zoom/zrc/phonecall/SipCallListPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SipCallListPopupWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SipCallListPopupWindow"


# instance fields
.field protected adapter:Lus/zoom/zrc/phonecall/PhoneListAdapter;

.field protected final context:Landroid/content/Context;

.field initListSize:I

.field private listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field protected final sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

.field protected target:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

.field private titleTextView:Landroid/widget/TextView;

.field private triangleView:Lus/zoom/zrc/view/TriangleView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V
    .locals 1
    .param p3    # Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow$1;-><init>(Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)V

    iput-object v0, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 120
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->context:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->target:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 122
    iput-object p3, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)Landroidx/databinding/Observable$OnPropertyChangedCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-object p0
.end method

.method static newBackgroundCallPopupWindow(Landroid/content/Context;)Lus/zoom/zrc/phonecall/SipCallListPopupWindow;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 52
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "SipCallListPopupWindow"

    const-string v0, "newMergeCallPopupWindow() called with: presenter is null."

    .line 54
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 57
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "SipCallListPopupWindow"

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newMergeCallPopupWindow() called with: context = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 63
    :cond_1
    new-instance v1, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;

    invoke-direct {v1, p0, v3, v0}, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;-><init>(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    invoke-virtual {v1}, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->buildView()Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    move-result-object p0

    return-object p0
.end method

.method static newBackgroundCallersPopupWindow(Landroid/content/Context;)Lus/zoom/zrc/phonecall/SipCallListPopupWindow;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 84
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "SipCallListPopupWindow"

    const-string v0, "newMergeCallPopupWindow() called with: presenter is null."

    .line 86
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 89
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Lus/zoom/zrc/model/SipCallInfoList;->getBackgroundCalls()Ljava/util/List;

    move-result-object v3

    .line 91
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const-string p0, "SipCallListPopupWindow"

    const-string v0, "newBackgroundCallersPopupWindow() called, but background call size is not 1."

    .line 92
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 95
    :cond_1
    new-instance v1, Lus/zoom/zrc/phonecall/BackgroundCallersPopupWindow;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-direct {v1, p0, v2, v0}, Lus/zoom/zrc/phonecall/BackgroundCallersPopupWindow;-><init>(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    invoke-virtual {v1}, Lus/zoom/zrc/phonecall/BackgroundCallersPopupWindow;->buildView()Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    move-result-object p0

    return-object p0
.end method

.method static newForegroundCallersPopupWindow(Landroid/content/Context;)Lus/zoom/zrc/phonecall/SipCallListPopupWindow;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 68
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "SipCallListPopupWindow"

    const-string v0, "newMergeCallPopupWindow() called with: presenter is null."

    .line 70
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 73
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "SipCallListPopupWindow"

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newMergeCallPopupWindow() called with: context = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 79
    :cond_1
    new-instance v1, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;

    invoke-direct {v1, p0, v3, v0}, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;-><init>(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    invoke-virtual {v1}, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;->buildView()Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    move-result-object p0

    return-object p0
.end method

.method static newMergeCallPopupWindow(Landroid/content/Context;)Lus/zoom/zrc/phonecall/SipCallListPopupWindow;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 36
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "SipCallListPopupWindow"

    const-string v0, "newMergeCallPopupWindow() called with: presenter is null."

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 41
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "SipCallListPopupWindow"

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newMergeCallPopupWindow() called with: context = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 47
    :cond_1
    new-instance v1, Lus/zoom/zrc/phonecall/MergeCallPopupWindow;

    invoke-direct {v1, p0, v3, v0}, Lus/zoom/zrc/phonecall/MergeCallPopupWindow;-><init>(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    invoke-virtual {v1}, Lus/zoom/zrc/phonecall/MergeCallPopupWindow;->buildView()Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method buildView()Lus/zoom/zrc/phonecall/SipCallListPopupWindow;
    .locals 5

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->sip_call_popup_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->sip_call_list_pop_up_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 128
    sget v2, Lus/zoom/zrcbox/R$id;->icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/view/TriangleView;

    iput-object v2, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->triangleView:Lus/zoom/zrc/view/TriangleView;

    .line 129
    sget v2, Lus/zoom/zrcbox/R$id;->tv_title_transparent:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->titleTextView:Landroid/widget/TextView;

    .line 130
    sget v2, Lus/zoom/zrcbox/R$id;->rv_list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 131
    iget-object v2, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v2, -0x2

    .line 133
    invoke-virtual {p0, v2}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->setHeight(I)V

    .line 134
    invoke-virtual {p0, v1}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->setWidth(I)V

    const/4 v1, 0x1

    .line 135
    invoke-virtual {p0, v1}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->setFocusable(Z)V

    .line 136
    invoke-virtual {p0, v1}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->setOutsideTouchable(Z)V

    .line 137
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->initData()I

    move-result v1

    iput v1, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->initListSize:I

    .line 139
    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->setContentView(Landroid/view/View;)V

    .line 141
    new-instance v1, Lus/zoom/zrc/phonecall/SipCallListPopupWindow$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow$2;-><init>(Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object p0
.end method

.method protected abstract initData()I
.end method

.method protected abstract isListSizeChanged()Z
.end method

.method protected abstract onSipCallListChanged()V
.end method

.method positionTriangleTo(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->triangleView:Lus/zoom/zrc/view/TriangleView;

    if-eqz v0, :cond_0

    .line 165
    invoke-static {p1, v0}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->updateArrowToCenterHorizontal(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
