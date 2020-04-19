.class Lus/zoom/androidlib/app/ZMActivity$2;
.super Ljava/lang/Object;
.source "ZMActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/app/ZMActivity;->performMoveToBackground()V
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

    .line 558
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMActivity$2;->this$0:Lus/zoom/androidlib/app/ZMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 560
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMActivity;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity$2;->this$0:Lus/zoom/androidlib/app/ZMActivity;

    invoke-static {v0}, Lus/zoom/androidlib/app/ZMActivity;->access$000(Lus/zoom/androidlib/app/ZMActivity;)V

    :cond_1
    return-void
.end method
