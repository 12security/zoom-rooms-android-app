.class Lus/zoom/zrc/lightbar/LightBarManager$4;
.super Ljava/lang/Object;
.source "LightBarManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/lightbar/LightBarManager;->bindServiceIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/lightbar/LightBarManager;


# direct methods
.method constructor <init>(Lus/zoom/zrc/lightbar/LightBarManager;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lus/zoom/zrc/lightbar/LightBarManager$4;->this$0:Lus/zoom/zrc/lightbar/LightBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "lightbar service bind died"

    const/4 v0, 0x0

    .line 137
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lus/zoom/zrc/lightbar/LightBarManager$4;->this$0:Lus/zoom/zrc/lightbar/LightBarManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrc/lightbar/LightBarManager;->access$202(Lus/zoom/zrc/lightbar/LightBarManager;Lus/zoom/zrc/lightbar/ISignalTransportInterface;)Lus/zoom/zrc/lightbar/ISignalTransportInterface;

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "bind lightbar service success"

    const/4 v0, 0x0

    .line 124
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object p1, p0, Lus/zoom/zrc/lightbar/LightBarManager$4;->this$0:Lus/zoom/zrc/lightbar/LightBarManager;

    invoke-static {p2}, Lus/zoom/zrc/lightbar/ISignalTransportInterface$Stub;->asInterface(Landroid/os/IBinder;)Lus/zoom/zrc/lightbar/ISignalTransportInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/zrc/lightbar/LightBarManager;->access$202(Lus/zoom/zrc/lightbar/LightBarManager;Lus/zoom/zrc/lightbar/ISignalTransportInterface;)Lus/zoom/zrc/lightbar/ISignalTransportInterface;

    .line 126
    iget-object p1, p0, Lus/zoom/zrc/lightbar/LightBarManager$4;->this$0:Lus/zoom/zrc/lightbar/LightBarManager;

    invoke-static {p1}, Lus/zoom/zrc/lightbar/LightBarManager;->access$300(Lus/zoom/zrc/lightbar/LightBarManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "lightbar service disconnected"

    const/4 v0, 0x0

    .line 131
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lus/zoom/zrc/lightbar/LightBarManager$4;->this$0:Lus/zoom/zrc/lightbar/LightBarManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrc/lightbar/LightBarManager;->access$202(Lus/zoom/zrc/lightbar/LightBarManager;Lus/zoom/zrc/lightbar/ISignalTransportInterface;)Lus/zoom/zrc/lightbar/ISignalTransportInterface;

    return-void
.end method
