.class public Lus/zoom/zrp/reserve/ZRPReserveTitleBar;
.super Landroid/view/ViewGroup;
.source "ZRPReserveTitleBar.java"


# instance fields
.field private backView:Landroid/view/View;

.field private locationNameContainerView:Landroid/view/View;

.field private myLocationButton:Landroid/view/View;

.field private reserveOtherRoomButton:Landroid/view/View;

.field private roomNameView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 33
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 34
    sget v0, Lus/zoom/zrcbox/R$id;->btn_reserve_other_rooms:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->reserveOtherRoomButton:Landroid/view/View;

    .line 35
    sget v0, Lus/zoom/zrcbox/R$id;->btn_my_location:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->myLocationButton:Landroid/view/View;

    .line 36
    sget v0, Lus/zoom/zrcbox/R$id;->iv_reserve_back:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->backView:Landroid/view/View;

    .line 37
    sget v0, Lus/zoom/zrcbox/R$id;->tv_reserve_room_name:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->roomNameView:Landroid/view/View;

    .line 38
    sget v0, Lus/zoom/zrcbox/R$id;->ll_reserve_location_name_container:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->locationNameContainerView:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 64
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->reserveOtherRoomButton:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int p1, p4, p1

    .line 77
    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->reserveOtherRoomButton:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 79
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->myLocationButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int p1, p4, p1

    .line 80
    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->myLocationButton:Landroid/view/View;

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 83
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->backView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, p3

    .line 84
    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->backView:Landroid/view/View;

    invoke-virtual {p2, p3, p3, p1, p5}, Landroid/view/View;->layout(IIII)V

    .line 86
    div-int/lit8 p4, p4, 0x2

    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->roomNameView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int p1, p4, p1

    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->reserveOtherRoomButton:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 87
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->reserveOtherRoomButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->roomNameView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    .line 88
    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->reserveOtherRoomButton:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    .line 89
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->roomNameView:Landroid/view/View;

    invoke-virtual {v0, p1, p3, p2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->roomNameView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int p1, p4, p1

    .line 92
    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->roomNameView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p1

    .line 93
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->roomNameView:Landroid/view/View;

    invoke-virtual {v0, p1, p3, p2, p5}, Landroid/view/View;->layout(IIII)V

    .line 96
    :goto_0
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->locationNameContainerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int p1, p4, p1

    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->myLocationButton:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 97
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->myLocationButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->locationNameContainerView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    .line 98
    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->backView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 99
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->backView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    .line 101
    :cond_2
    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->myLocationButton:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    .line 102
    iget-object p4, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->locationNameContainerView:Landroid/view/View;

    invoke-virtual {p4, p1, p3, p2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 104
    :cond_3
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->locationNameContainerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    .line 105
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->locationNameContainerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, p4

    .line 106
    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->locationNameContainerView:Landroid/view/View;

    invoke-virtual {p2, p4, p3, p1, p5}, Landroid/view/View;->layout(IIII)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 43
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 44
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->reserveOtherRoomButton:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->getMeasuredWidth()I

    move-result p1

    .line 49
    invoke-virtual {p0}, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->getMeasuredHeight()I

    move-result p2

    .line 51
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->reserveOtherRoomButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    .line 52
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->myLocationButton:Landroid/view/View;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 53
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->backView:Landroid/view/View;

    invoke-virtual {p0}, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 55
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->reserveOtherRoomButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p1, v0

    .line 56
    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->roomNameView:Landroid/view/View;

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/view/View;->measure(II)V

    .line 58
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->myLocationButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->backView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 59
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveTitleBar;->locationNameContainerView:Landroid/view/View;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method
