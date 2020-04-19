.class public Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;
.super Landroidx/fragment/app/Fragment;
.source "ZRCChangeContentScreenPageFragment.java"


# static fields
.field private static final SCREEN_INDEX:Ljava/lang/String; = "SCREEN INDEX"


# instance fields
.field private curPos:I

.field private index:I

.field private pinShareScreenView:Lus/zoom/zrc/view/ZRCPinShareScreenView;

.field private propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->curPos:I

    .line 25
    iput v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->index:I

    .line 27
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    .line 45
    new-instance v0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment$1;-><init>(Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->notifyPinShareViewUpdate()V

    return-void
.end method

.method public static newInstance(I)Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;
    .locals 3

    .line 58
    new-instance v0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;

    invoke-direct {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SCREEN INDEX"

    .line 60
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {v0, v1}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private notifyPinShareViewUpdate()V
    .locals 1

    .line 82
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->pinShareScreenView:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->updateScreenViewContent()V

    .line 86
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->pinShareScreenView:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->onShareListChanged()V

    return-void
.end method

.method private updateScreenViewContent()V
    .locals 5

    .line 95
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->pinShareScreenView:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget v1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->curPos:I

    iget v2, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->index:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v2, :cond_1

    .line 101
    sget v1, Lus/zoom/zrcbox/R$id;->pin_share_screen_content_layout:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->pinShareScreenView:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->updateListAndWarningMessage()V

    .line 103
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->pinShareScreenView:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    sget v1, Lus/zoom/zrcbox/R$id;->pin_share_screen_index_mask:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_1
    sget v1, Lus/zoom/zrcbox/R$id;->pin_share_screen_content_layout:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->pinShareScreenView:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    sget v1, Lus/zoom/zrcbox/R$id;->pin_share_screen_index_mask:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method dismissAlertDialog()V
    .locals 1

    .line 122
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->pinShareScreenView:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->dismissAlertDialog()V

    return-void
.end method

.method public getIndex()I
    .locals 1

    .line 118
    iget v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->index:I

    return v0
.end method

.method hideDetail()V
    .locals 2

    .line 111
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->pinShareScreenView:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->pin_share_screen_content_layout:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 68
    sget p3, Lus/zoom/zrcbox/R$layout;->pin_share_item_port_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "SCREEN INDEX"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->index:I

    .line 72
    :cond_0
    sget p2, Lus/zoom/zrcbox/R$id;->ll_parent_pin_share_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 73
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/ZRCPinShareScreenView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->pinShareScreenView:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    .line 74
    iget-object p2, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->pinShareScreenView:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-virtual {p2, v0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->setVisibility(I)V

    .line 75
    iget p2, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->index:I

    const/4 p3, -0x1

    if-le p2, p3, :cond_1

    iget-object p3, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p3}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 76
    iget-object p2, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->pinShareScreenView:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    iget-object p3, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p3}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object p3

    iget v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->index:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {p2, p3}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->init(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V

    :cond_1
    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 42
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 35
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 36
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method setCurPos(I)V
    .locals 0

    .line 90
    iput p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->curPos:I

    .line 91
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->updateScreenViewContent()V

    return-void
.end method
