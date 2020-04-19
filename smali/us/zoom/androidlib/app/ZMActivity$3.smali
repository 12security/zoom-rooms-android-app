.class Lus/zoom/androidlib/app/ZMActivity$3;
.super Ljava/lang/Object;
.source "ZMActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/app/ZMActivity;->performMoveToFront()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/app/ZMActivity;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/app/ZMActivity;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMActivity$3;->this$0:Lus/zoom/androidlib/app/ZMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 590
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity$3;->this$0:Lus/zoom/androidlib/app/ZMActivity;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMActivity;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity$3;->this$0:Lus/zoom/androidlib/app/ZMActivity;

    invoke-static {v0}, Lus/zoom/androidlib/app/ZMActivity;->access$100(Lus/zoom/androidlib/app/ZMActivity;)V

    :cond_0
    return-void
.end method
