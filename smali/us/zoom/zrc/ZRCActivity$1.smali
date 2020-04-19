.class Lus/zoom/zrc/ZRCActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ZRCActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ZRCActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ZRCActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lus/zoom/zrc/ZRCActivity$1;->this$0:Lus/zoom/zrc/ZRCActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity$1;->this$0:Lus/zoom/zrc/ZRCActivity;

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/ZRCActivity;->handleBroadcastReceiver(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
