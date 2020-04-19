.class Lus/zoom/androidlib/widget/ZMEllipsisTextView$1;
.super Ljava/lang/Object;
.source "ZMEllipsisTextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/ZMEllipsisTextView;->setEllipsisText(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/ZMEllipsisTextView;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/ZMEllipsisTextView;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView$1;->this$0:Lus/zoom/androidlib/widget/ZMEllipsisTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 12

    .line 69
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView$1;->this$0:Lus/zoom/androidlib/widget/ZMEllipsisTextView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 71
    :try_start_0
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView$1;->this$0:Lus/zoom/androidlib/widget/ZMEllipsisTextView;

    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView$1;->this$0:Lus/zoom/androidlib/widget/ZMEllipsisTextView;

    invoke-virtual {v2}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView$1;->this$0:Lus/zoom/androidlib/widget/ZMEllipsisTextView;

    invoke-static {v3}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->access$000(Lus/zoom/androidlib/widget/ZMEllipsisTextView;)I

    move-result v3

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView$1;->this$0:Lus/zoom/androidlib/widget/ZMEllipsisTextView;

    iget-object v6, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView$1;->this$0:Lus/zoom/androidlib/widget/ZMEllipsisTextView;

    .line 72
    invoke-static {v6}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->access$100(Lus/zoom/androidlib/widget/ZMEllipsisTextView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView$1;->this$0:Lus/zoom/androidlib/widget/ZMEllipsisTextView;

    invoke-virtual {v7}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView$1;->this$0:Lus/zoom/androidlib/widget/ZMEllipsisTextView;

    invoke-static {v8}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->access$000(Lus/zoom/androidlib/widget/ZMEllipsisTextView;)I

    move-result v8

    new-array v9, v0, [Ljava/lang/Object;

    const-string v10, ""

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->ellipsizeAtMiddle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 71
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView$1;->this$0:Lus/zoom/androidlib/widget/ZMEllipsisTextView;

    invoke-static {v1}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->access$100(Lus/zoom/androidlib/widget/ZMEllipsisTextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return v0
.end method
