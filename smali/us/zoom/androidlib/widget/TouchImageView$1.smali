.class Lus/zoom/androidlib/widget/TouchImageView$1;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/TouchImageView;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/TouchImageView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView$1;->this$0:Lus/zoom/androidlib/widget/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 74
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView$1;->this$0:Lus/zoom/androidlib/widget/TouchImageView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/TouchImageView;->access$000(Lus/zoom/androidlib/widget/TouchImageView;)Lus/zoom/androidlib/widget/TouchImageView$OnViewPortChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView$1;->this$0:Lus/zoom/androidlib/widget/TouchImageView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/TouchImageView;->access$000(Lus/zoom/androidlib/widget/TouchImageView;)Lus/zoom/androidlib/widget/TouchImageView$OnViewPortChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/androidlib/widget/TouchImageView$OnViewPortChangedListener;->onViewPortChanged()V

    :cond_0
    return-void
.end method
