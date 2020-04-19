.class Lus/zoom/zrp/view/ZRPMeetingListItemView$3;
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

.field final synthetic val$checkInButDrawRect:Landroid/graphics/Rect;

.field final synthetic val$checkInButtonDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$padding:I


# direct methods
.method constructor <init>(Lus/zoom/zrp/view/ZRPMeetingListItemView;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$3;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    iput-object p2, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$3;->val$checkInButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$3;->val$padding:I

    iput-object p4, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$3;->val$checkInButDrawRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 187
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 188
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$3;->val$checkInButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$3;->val$padding:I

    add-int/2addr p1, v1

    iget-object v1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$3;->val$checkInButDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$3;->val$checkInButDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$3;->val$checkInButDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
