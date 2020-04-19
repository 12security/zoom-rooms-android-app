.class Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$PointEvaluator;
.super Ljava/lang/Object;
.source "ZMSegmentTabLayout.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PointEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$PointEvaluator;->this$0:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 529
    check-cast p2, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    check-cast p3, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    invoke-virtual {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$PointEvaluator;->evaluate(FLus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;)Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(FLus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;)Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;
    .locals 3

    .line 532
    iget v0, p2, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->left:F

    iget v1, p3, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->left:F

    iget v2, p2, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->left:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 533
    iget v1, p2, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->right:F

    iget p3, p3, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->right:F

    iget p2, p2, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->right:F

    sub-float/2addr p3, p2

    mul-float p1, p1, p3

    add-float/2addr v1, p1

    .line 534
    new-instance p1, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    iget-object p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$PointEvaluator;->this$0:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;

    invoke-direct {p1, p2}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;-><init>(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)V

    .line 535
    iput v0, p1, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->left:F

    .line 536
    iput v1, p1, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->right:F

    return-object p1
.end method
