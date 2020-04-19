.class Lus/zoom/zrp/view/ZRPMeetingListItemView$5;
.super Ljava/lang/Object;
.source "ZRPMeetingListItemView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/view/ZRPMeetingListItemView;->startCheckInAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

.field final synthetic val$markDrawable:Landroid/graphics/drawable/ClipDrawable;


# direct methods
.method constructor <init>(Lus/zoom/zrp/view/ZRPMeetingListItemView;Landroid/graphics/drawable/ClipDrawable;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$5;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    iput-object p2, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$5;->val$markDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 215
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 216
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$5;->val$markDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    return-void
.end method
