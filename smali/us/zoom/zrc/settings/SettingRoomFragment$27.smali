.class Lus/zoom/zrc/settings/SettingRoomFragment$27;
.super Ljava/lang/Object;
.source "SettingRoomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingRoomFragment;->createShutDownDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingRoomFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 805
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingRoomFragment$27;->this$0:Lus/zoom/zrc/settings/SettingRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 808
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->requestShutdownZR()V

    .line 809
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->shutdownSystem()Z

    const-string p1, "on click Shut Down"

    const/4 p2, 0x0

    .line 810
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
