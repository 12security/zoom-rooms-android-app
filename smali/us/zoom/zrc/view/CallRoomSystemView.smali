.class public Lus/zoom/zrc/view/CallRoomSystemView;
.super Landroid/widget/RelativeLayout;
.source "CallRoomSystemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;
    }
.end annotation


# instance fields
.field protected addressView:Lus/zoom/zrc/view/RoomSystemAddressView;

.field protected keypadControllerView:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

.field protected layoutDialog:Landroidx/constraintlayout/widget/ConstraintLayout;

.field protected listener:Lus/zoom/zrc/view/CallRoomSystemViewListener;

.field protected tvTip:Landroid/widget/TextView;

.field protected vDismiss:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lus/zoom/zrc/view/CallRoomSystemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0}, Lus/zoom/zrc/view/CallRoomSystemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-virtual {p0}, Lus/zoom/zrc/view/CallRoomSystemView;->init()V

    return-void
.end method

.method private showAddressOrKeypad(Z)V
    .locals 3

    .line 112
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView;->addressView:Lus/zoom/zrc/view/RoomSystemAddressView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/RoomSystemAddressView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView;->keypadControllerView:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lus/zoom/zrc/view/CallRoomSystemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->view_call_room_system:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    sget v0, Lus/zoom/zrcbox/R$id;->kd:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/CallRoomSystemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    .line 48
    sget v1, Lus/zoom/zrcbox/R$id;->ib_dismiss:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/CallRoomSystemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/view/CallRoomSystemView;->vDismiss:Landroid/view/View;

    .line 49
    sget v1, Lus/zoom/zrcbox/R$id;->layout_dialog:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/CallRoomSystemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lus/zoom/zrc/view/CallRoomSystemView;->layoutDialog:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    sget v1, Lus/zoom/zrcbox/R$id;->tv_tip:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/CallRoomSystemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lus/zoom/zrc/view/CallRoomSystemView;->tvTip:Landroid/widget/TextView;

    .line 51
    sget v1, Lus/zoom/zrcbox/R$id;->call_room_system_view:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/CallRoomSystemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/RoomSystemAddressView;

    iput-object v1, p0, Lus/zoom/zrc/view/CallRoomSystemView;->addressView:Lus/zoom/zrc/view/RoomSystemAddressView;

    .line 52
    sget v1, Lus/zoom/zrcbox/R$id;->keypad_controller:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/CallRoomSystemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    iput-object v1, p0, Lus/zoom/zrc/view/CallRoomSystemView;->keypadControllerView:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/CallRoomSystemView;->moveUp(Z)V

    .line 55
    new-instance v1, Lus/zoom/zrc/view/CallRoomSystemView$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/CallRoomSystemView$1;-><init>(Lus/zoom/zrc/view/CallRoomSystemView;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->setKeyboardListener(Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;)V

    .line 66
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView;->keypadControllerView:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    new-instance v1, Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;-><init>(Lus/zoom/zrc/view/CallRoomSystemView;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->setControllerListener(Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;)V

    return-void
.end method

.method protected moveUp(Z)V
    .locals 3

    .line 94
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView;->layoutDialog:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/16 v1, 0x31

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    .line 95
    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 96
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView;->layoutDialog:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 99
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView;->vDismiss:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lus/zoom/zrc/view/CallRoomSystemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/CallRoomSystemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 104
    :goto_1
    iget-object v1, p0, Lus/zoom/zrc/view/CallRoomSystemView;->addressView:Lus/zoom/zrc/view/RoomSystemAddressView;

    invoke-virtual {v1}, Lus/zoom/zrc/view/RoomSystemAddressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p1, :cond_2

    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/CallRoomSystemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$dimen;->room_system_address_view_margin_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 108
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView;->addressView:Lus/zoom/zrc/view/RoomSystemAddressView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->moveUp(Z)V

    return-void
.end method

.method public setListener(Lus/zoom/zrc/view/CallRoomSystemViewListener;)V
    .locals 1

    .line 70
    iput-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemView;->listener:Lus/zoom/zrc/view/CallRoomSystemViewListener;

    .line 71
    iget-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemView;->addressView:Lus/zoom/zrc/view/RoomSystemAddressView;

    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView;->listener:Lus/zoom/zrc/view/CallRoomSystemViewListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->setListener(Lus/zoom/zrc/view/RoomSystemAddressViewListener;)V

    return-void
.end method

.method public updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/CallRoomSystemView;->showAddressOrKeypad(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 83
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/CallRoomSystemView;->showAddressOrKeypad(Z)V

    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView;->addressView:Lus/zoom/zrc/view/RoomSystemAddressView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView;->keypadControllerView:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    return-void
.end method
