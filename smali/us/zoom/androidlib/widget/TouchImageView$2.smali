.class Lus/zoom/androidlib/widget/TouchImageView$2;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/TouchImageView;->handleFling()V
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

    .line 933
    iput-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView$2;->this$0:Lus/zoom/androidlib/widget/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 935
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView$2;->this$0:Lus/zoom/androidlib/widget/TouchImageView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/TouchImageView;->access$100(Lus/zoom/androidlib/widget/TouchImageView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView$2;->this$0:Lus/zoom/androidlib/widget/TouchImageView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/TouchImageView;->access$200(Lus/zoom/androidlib/widget/TouchImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView$2;->this$0:Lus/zoom/androidlib/widget/TouchImageView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/TouchImageView;->access$300(Lus/zoom/androidlib/widget/TouchImageView;)V

    :cond_0
    return-void
.end method
