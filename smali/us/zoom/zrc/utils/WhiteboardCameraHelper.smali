.class public Lus/zoom/zrc/utils/WhiteboardCameraHelper;
.super Ljava/lang/Object;
.source "WhiteboardCameraHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WhiteboardCameraHelper"

.field private static instance:Lus/zoom/zrc/utils/WhiteboardCameraHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;
    .locals 2

    const-class v0, Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->instance:Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    invoke-direct {v1}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;-><init>()V

    sput-object v1, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->instance:Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    .line 23
    :cond_0
    sget-object v1, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->instance:Lus/zoom/zrc/utils/WhiteboardCameraHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getErrorMsg(Landroid/content/Context;ILus/zoom/zrcsdk/model/ZMDeviceItem;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 180
    invoke-virtual {p0, p3}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getWbCameraDisplayName(Lus/zoom/zrcsdk/model/ZMDeviceItem;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 183
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$string;->wbc_connected_by_other:I

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p3, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$string;->wbc_connect_invalid_record:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$string;->wbc_disconnected:I

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p3, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSuccessfullyPairedItem(Lus/zoom/zrcsdk/model/ZMDeviceInfo;)Lus/zoom/zrcsdk/model/ZMDeviceItem;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->getZmd_item()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 35
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_status()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getWbCameraDisplayName(Lus/zoom/zrcsdk/model/ZMDeviceItem;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 51
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_vender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_vender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_host()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :cond_3
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 64
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_id()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :cond_4
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 68
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 71
    :cond_5
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_host()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 72
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_host()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, ""

    return-object p1
.end method

.method public isWbCameraHasControl(Lus/zoom/zrcsdk/model/ZMDeviceItem;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 82
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->isZmd_has_control()Z

    move-result p1

    return p1
.end method

.method public isWhiteboardCameraEnabled()Z
    .locals 1

    .line 86
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWhiteboardCameraInfo()Lus/zoom/zrcsdk/model/ZMDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhiteboardCameraPaired()Z
    .locals 1

    .line 90
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSelectedWhiteboardCamera()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhiteboardCameraSharing()Z
    .locals 2

    .line 94
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSelectedWhiteboardCamera()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_status()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pair(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "WhiteboardCameraHelper"

    const-string v1, "request PAIR wbcamera, host=%s, id=%s, a_length=%s, p_length=%s"

    const/4 v2, 0x4

    .line 109
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v5

    const/4 v6, 0x2

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-virtual/range {v5 .. v10}, Lus/zoom/zrc/model/Model;->requestZMDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public pairSeize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "WhiteboardCameraHelper"

    const-string v1, "request PAIR_SEIZE wbcamera, host=%s, id=%s, a_length=%s, p_length=%s"

    const/4 v2, 0x4

    .line 114
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v5

    const/4 v6, 0x3

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-virtual/range {v5 .. v10}, Lus/zoom/zrc/model/Model;->requestZMDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public pairSeizeCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "WhiteboardCameraHelper"

    const-string v1, "request PAIR_SEIZE_CANCEL wbcamera, host=%s, id=%s"

    const/4 v2, 0x2

    .line 119
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    const-string v8, ""

    const-string v9, ""

    const/4 v5, 0x4

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lus/zoom/zrc/model/Model;->requestZMDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public startSearch()V
    .locals 9

    const-string v0, "WhiteboardCameraHelper"

    const-string v1, "request START_SEARCH wbcamera"

    const/4 v2, 0x0

    .line 99
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lus/zoom/zrc/model/Model;->requestZMDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public startShare()V
    .locals 8

    .line 129
    invoke-virtual {p0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->isWhiteboardCameraPaired()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "WhiteboardCameraHelper"

    const-string v2, "wbcamera hasn\'t paired"

    .line 130
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->isWhiteboardCameraSharing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WhiteboardCameraHelper"

    const-string v2, "wbcamera is already sharing"

    .line 135
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 138
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWhiteboardCameraInfo()Lus/zoom/zrcsdk/model/ZMDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 142
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->getZmd_item()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 146
    :cond_3
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_host()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_id()Ljava/lang/String;

    move-result-object v5

    const-string v0, "WhiteboardCameraHelper"

    const-string v2, "request START_SHARE wbcamera, host=%s, id=%s"

    const/4 v3, 0x2

    .line 149
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v5, v3, v1

    invoke-static {v0, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    const/4 v3, 0x6

    const-string v6, ""

    const-string v7, ""

    invoke-virtual/range {v2 .. v7}, Lus/zoom/zrc/model/Model;->requestZMDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public stopSearch()V
    .locals 9

    const-string v0, "WhiteboardCameraHelper"

    const-string v1, "request STOP_SEARCH wbcamera"

    const/4 v2, 0x0

    .line 104
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v4, 0x1

    invoke-virtual/range {v3 .. v8}, Lus/zoom/zrc/model/Model;->requestZMDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public stopShare()V
    .locals 8

    .line 154
    invoke-virtual {p0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->isWhiteboardCameraPaired()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "WhiteboardCameraHelper"

    const-string v2, "wbcamera hasn\'t paired"

    .line 155
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->isWhiteboardCameraSharing()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WhiteboardCameraHelper"

    const-string v2, "wbcamera isn\'t sharing"

    .line 160
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 163
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWhiteboardCameraInfo()Lus/zoom/zrcsdk/model/ZMDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 167
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->getZmd_item()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 171
    :cond_3
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_host()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_id()Ljava/lang/String;

    move-result-object v5

    const-string v0, "WhiteboardCameraHelper"

    const-string v2, "request STOP_SHARE wbcamera, host=%s, id=%s"

    const/4 v3, 0x2

    .line 174
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v5, v3, v1

    invoke-static {v0, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    const/4 v3, 0x7

    const-string v6, ""

    const-string v7, ""

    invoke-virtual/range {v2 .. v7}, Lus/zoom/zrc/model/Model;->requestZMDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public unpair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "WhiteboardCameraHelper"

    const-string v1, "request UNPAIR wbcamera, host=%s, id=%s"

    const/4 v2, 0x2

    .line 124
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    const-string v8, ""

    const-string v9, ""

    const/4 v5, 0x5

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lus/zoom/zrc/model/Model;->requestZMDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
