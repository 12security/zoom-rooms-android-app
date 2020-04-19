.class Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "ZRCApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication$1;->this$0:Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 215
    iget-object p1, p0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication$1;->this$0:Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;

    invoke-static {p1}, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->access$300(Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;)V

    return-void
.end method
