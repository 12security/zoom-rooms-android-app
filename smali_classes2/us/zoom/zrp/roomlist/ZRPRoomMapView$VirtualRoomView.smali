.class Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;
.super Ljava/lang/Object;
.source "ZRPRoomMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrp/roomlist/ZRPRoomMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualRoomView"
.end annotation


# instance fields
.field private colorChanged:Z

.field private displayColor:I

.field private nameBounds:Landroid/graphics/Rect;

.field private nameLayout:Landroid/text/StaticLayout;

.field private pressed:Z

.field private roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private roomRender:Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

.field private stateBounds:Landroid/graphics/Rect;

.field private stateLayout:Landroid/text/StaticLayout;

.field final synthetic this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;


# direct methods
.method constructor <init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;Lus/zoom/zrp/model/ZRPRoomInfo;)V
    .locals 0
    .param p1    # Lus/zoom/zrp/roomlist/ZRPRoomMapView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 650
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    .line 643
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->stateBounds:Landroid/graphics/Rect;

    .line 651
    iput-object p2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    .line 652
    invoke-virtual {p2}, Lus/zoom/zrp/model/ZRPRoomInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->parse(Ljava/lang/String;)Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomRender:Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)Z
    .locals 0

    .line 633
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->isRoomReservable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)Landroid/graphics/Rect;
    .locals 0

    .line 633
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method private computeNameAndState(Z)Z
    .locals 10

    .line 722
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomRender:Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

    invoke-virtual {v1}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 723
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 724
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 725
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 726
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    if-le v5, v0, :cond_0

    .line 727
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 730
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_2

    .line 731
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomName()Ljava/lang/String;

    move-result-object v0

    .line 732
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getNameMaxLineCount(Landroid/graphics/Rect;)I

    move-result v2

    .line 733
    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v3}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$700(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/text/TextPaint;

    move-result-object v3

    mul-int v2, v2, v5

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 734
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$700(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/text/TextPaint;

    move-result-object v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameLayout:Landroid/text/StaticLayout;

    .line 736
    :cond_2
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 740
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->stateLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_4

    .line 741
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getState()Ljava/lang/String;

    move-result-object v2

    .line 742
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$800(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int v4, p1

    .line 743
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$800(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/text/TextPaint;

    move-result-object v3

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->stateLayout:Landroid/text/StaticLayout;

    .line 745
    :cond_4
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 746
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->stateBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 747
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->stateBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->stateLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 748
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->stateBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->stateLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 749
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->stateBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->stateLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    const/4 p1, 0x1

    return p1
.end method

.method private getNameMaxLineCount(Landroid/graphics/Rect;)I
    .locals 2

    .line 715
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$700(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 716
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 717
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private isRoomReservable()Z
    .locals 2

    .line 755
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfo;->isRoomReservable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private setLocationPaintColor(Landroid/graphics/Paint;)V
    .locals 2

    .line 759
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->isRoomReservable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrp_map_room_state_non_reservable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 761
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrp_map_room_state_busy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 764
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrp_map_room_state_available:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method drawRoomBounds(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 656
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomRender:Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

    if-nez v0, :cond_0

    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 662
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$400(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;

    move-result-object v2

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 663
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomRender:Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->transform(Landroid/graphics/Matrix;)V

    .line 665
    iget-boolean v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->pressed:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x7f

    goto :goto_0

    :cond_1
    const/16 v0, 0xff

    .line 667
    :goto_0
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$600(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/Paint;

    move-result-object v1

    .line 668
    invoke-direct {p0, v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->setLocationPaintColor(Landroid/graphics/Paint;)V

    const/4 v2, 0x0

    .line 670
    iput-boolean v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->colorChanged:Z

    .line 671
    iget v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->displayColor:I

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 672
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iput v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->displayColor:I

    const/4 v2, 0x1

    .line 673
    iput-boolean v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->colorChanged:Z

    .line 677
    :cond_2
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 678
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 679
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomRender:Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

    invoke-virtual {v2, p1, v1}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 682
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-double v2, v0

    const-wide v4, 0x3fd3333333333333L    # 0.3

    .line 683
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 684
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 685
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomRender:Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method drawRoomNameAndState(Landroid/graphics/Canvas;)V
    .locals 5

    .line 695
    iget-boolean v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->colorChanged:Z

    invoke-direct {p0, v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->computeNameAndState(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 697
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 698
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$700(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/text/TextPaint;

    move-result-object v0

    iget-boolean v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->pressed:Z

    const/16 v2, 0x7f

    const/16 v3, 0xff

    if-eqz v1, :cond_0

    const/16 v1, 0x7f

    goto :goto_0

    :cond_0
    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 699
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$700(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 700
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$700(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 701
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 702
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 704
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 705
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->stateBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->stateBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 706
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$800(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/text/TextPaint;

    move-result-object v0

    iget-boolean v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->pressed:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0xff

    :goto_1
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 707
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$800(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 708
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$800(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 709
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->stateLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 710
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method getBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 789
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomRender:Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$900()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 774
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v0}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRoomInfo()Lus/zoom/zrp/model/ZRPRoomInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 770
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    return-object v0
.end method

.method getState()Ljava/lang/String;
    .locals 2

    .line 778
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->zm_lbl_available:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 779
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->isRoomReservable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->non_reservable:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 781
    :cond_0
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v1}, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 782
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->zm_lbl_desktop_busy:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method isInBounds(FF)Z
    .locals 1

    .line 797
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->roomRender:Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method setPressed(Z)V
    .locals 0

    .line 793
    iput-boolean p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->pressed:Z

    return-void
.end method
