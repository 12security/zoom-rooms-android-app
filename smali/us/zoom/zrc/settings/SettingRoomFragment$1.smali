.class Lus/zoom/zrc/settings/SettingRoomFragment$1;
.super Ljava/lang/Object;
.source "SettingRoomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingRoomFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingRoomFragment$1;->this$0:Lus/zoom/zrc/settings/SettingRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingRoomFragment$1;->this$0:Lus/zoom/zrc/settings/SettingRoomFragment;

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingRoomFragment;->access$000(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    .line 122
    sget-object p1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_CHANGE_WINDOWS_LOGIN_PASSWORD:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForRoom(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method
