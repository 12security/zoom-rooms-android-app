.class Lus/zoom/androidlib/widget/ZMImageTextButton$1;
.super Ljava/lang/Object;
.source "ZMImageTextButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/ZMImageTextButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastClickTime:J

.field final synthetic this$0:Lus/zoom/androidlib/widget/ZMImageTextButton;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/ZMImageTextButton;)V
    .locals 2

    .line 52
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMImageTextButton$1;->this$0:Lus/zoom/androidlib/widget/ZMImageTextButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lus/zoom/androidlib/widget/ZMImageTextButton$1;->mLastClickTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 56
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMImageTextButton$1;->this$0:Lus/zoom/androidlib/widget/ZMImageTextButton;

    invoke-static {v0}, Lus/zoom/androidlib/widget/ZMImageTextButton;->access$000(Lus/zoom/androidlib/widget/ZMImageTextButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 60
    iget-wide v2, p0, Lus/zoom/androidlib/widget/ZMImageTextButton$1;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 61
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMImageTextButton$1;->this$0:Lus/zoom/androidlib/widget/ZMImageTextButton;

    invoke-static {v2}, Lus/zoom/androidlib/widget/ZMImageTextButton;->access$000(Lus/zoom/androidlib/widget/ZMImageTextButton;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 63
    :cond_1
    iput-wide v0, p0, Lus/zoom/androidlib/widget/ZMImageTextButton$1;->mLastClickTime:J

    return-void
.end method
