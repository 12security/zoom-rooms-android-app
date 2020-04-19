.class Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$1;
.super Ljava/lang/Object;
.source "ZMSegmentTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$1;->this$0:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 218
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$1;->this$0:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;

    invoke-static {v0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->access$000(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 219
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$1;->this$0:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->setCurrentTab(I)V

    .line 220
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$1;->this$0:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;

    invoke-static {v0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->access$100(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)Lus/zoom/androidlib/widget/segement/OnTabSelectListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$1;->this$0:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;

    invoke-static {v0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->access$100(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)Lus/zoom/androidlib/widget/segement/OnTabSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lus/zoom/androidlib/widget/segement/OnTabSelectListener;->onTabSelect(I)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$1;->this$0:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;

    invoke-static {v0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->access$100(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)Lus/zoom/androidlib/widget/segement/OnTabSelectListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$1;->this$0:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;

    invoke-static {v0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->access$100(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)Lus/zoom/androidlib/widget/segement/OnTabSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lus/zoom/androidlib/widget/segement/OnTabSelectListener;->onTabReselect(I)V

    :cond_1
    :goto_0
    return-void
.end method
