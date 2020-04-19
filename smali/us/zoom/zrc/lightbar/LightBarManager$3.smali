.class Lus/zoom/zrc/lightbar/LightBarManager$3;
.super Ljava/lang/Object;
.source "LightBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/lightbar/LightBarManager;->turnOffLightBar()V
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

    .line 79
    iput-object p1, p0, Lus/zoom/zrc/lightbar/LightBarManager$3;->this$0:Lus/zoom/zrc/lightbar/LightBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "turn off led"

    const/4 v1, 0x0

    .line 82
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lus/zoom/zrc/lightbar/LightBarManager$3;->this$0:Lus/zoom/zrc/lightbar/LightBarManager;

    const-string v2, "USB_RED_LED_CONTROL"

    invoke-static {v0, v2, v1}, Lus/zoom/zrc/lightbar/LightBarManager;->access$000(Lus/zoom/zrc/lightbar/LightBarManager;Ljava/lang/String;Z)V

    .line 84
    iget-object v0, p0, Lus/zoom/zrc/lightbar/LightBarManager$3;->this$0:Lus/zoom/zrc/lightbar/LightBarManager;

    const-string v2, "USB_GREEN_LED_CONTROL"

    invoke-static {v0, v2, v1}, Lus/zoom/zrc/lightbar/LightBarManager;->access$000(Lus/zoom/zrc/lightbar/LightBarManager;Ljava/lang/String;Z)V

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/lightbar/LightBarManager$3;->this$0:Lus/zoom/zrc/lightbar/LightBarManager;

    const-string v2, "USB_BLUE_LED_CONTROL"

    invoke-static {v0, v2, v1}, Lus/zoom/zrc/lightbar/LightBarManager;->access$000(Lus/zoom/zrc/lightbar/LightBarManager;Ljava/lang/String;Z)V

    return-void
.end method
