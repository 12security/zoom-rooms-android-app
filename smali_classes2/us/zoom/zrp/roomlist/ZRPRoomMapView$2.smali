.class Lus/zoom/zrp/roomlist/ZRPRoomMapView$2;
.super Ljava/lang/Object;
.source "ZRPRoomMapView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/roomlist/ZRPRoomMapView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;


# direct methods
.method constructor <init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$2;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 183
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$2;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
