.class public Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;
.super Ljava/util/ArrayList;
.source "ZRCSDeviceList.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_ADD:I = 0x1

.field public static final ACTION_TYPE_INIT:I = 0x0

.field public static final ACTION_TYPE_UPDATE:I = 0x2

.field public static final ZRCSDeviceOperationType_Connect:I = 0x0

.field public static final ZRCSDeviceOperationType_Control:I = 0x1

.field public static final ZRCSErrorCode_DeviceID_Error:I = 0x6

.field public static final ZRCSErrorCode_Device_Empty_Error:I = 0xa

.field public static final ZRCSErrorCode_IP2SL_Settings_Error:I = 0x9

.field public static final ZRCSErrorCode_IP_Error:I = 0x4

.field public static final ZRCSErrorCode_IP_Is_Public:I = 0x5

.field public static final ZRCSErrorCode_Json_Config_Error:I = 0x3

.field public static final ZRCSErrorCode_Json_Syntax_Error:I = 0x2

.field public static final ZRCSErrorCode_MethodID_Error:I = 0x7

.field public static final ZRCSErrorCode_No_Config_Error:I = 0x1

.field public static final ZRCSErrorCode_ParamID_Error:I = 0x8

.field public static final ZRCSErrorCode_Success:I = 0x0

.field public static final ZRCSErrorCode_Unknown:I = -0x1


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static actionType2String(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "ACTION_TYPE_UNKNOWN !!"

    return-object p0

    :pswitch_0
    const-string p0, "ACTION_TYPE_UPDATE"

    return-object p0

    :pswitch_1
    const-string p0, "ACTION_TYPE_ADD"

    return-object p0

    :pswitch_2
    const-string p0, "ACTION_TYPE_INIT"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static errorCode2String(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "ZRCSErrorCode_Unknown !!"

    return-object p0

    :pswitch_0
    const-string p0, "ZRCSErrorCode_Device_Empty_Error"

    return-object p0

    :pswitch_1
    const-string p0, "ZRCSErrorCode_IP2SL_Settings_Error"

    return-object p0

    :pswitch_2
    const-string p0, "ZRCSErrorCode_ParamID_Error"

    return-object p0

    :pswitch_3
    const-string p0, "ZRCSErrorCode_MethodID_Error"

    return-object p0

    :pswitch_4
    const-string p0, "ZRCSErrorCode_DeviceID_Error"

    return-object p0

    :pswitch_5
    const-string p0, "ZRCSErrorCode_IP_Is_Public"

    return-object p0

    :pswitch_6
    const-string p0, "ZRCSErrorCode_IP_Error"

    return-object p0

    :pswitch_7
    const-string p0, "ZRCSErrorCode_Json_Config_Error"

    return-object p0

    :pswitch_8
    const-string p0, "ZRCSErrorCode_Json_Syntax_Error"

    return-object p0

    :pswitch_9
    const-string p0, "ZRCSErrorCode_No_Config_Error"

    return-object p0

    :pswitch_a
    const-string p0, "ZRCSErrorCode_Success"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static logZRCSDeviceInfo(Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;)V
    .locals 5
    .param p0    # Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 186
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "  <methods"

    .line 187
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getMethods()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "      This Device\'s Methods are empty or null"

    .line 189
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getMethods()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;

    if-nez v0, :cond_2

    goto :goto_0

    .line 195
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "    <params"

    .line 196
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->getParams()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->getParams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    const-string v2, "      This Method\'s Params are empty or null"

    .line 198
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_4
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->getParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;

    if-nez v2, :cond_5

    goto :goto_1

    .line 204
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    const-string v0, "    <\\params>"

    .line 206
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string p0, "  <\\methods>"

    .line 208
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static logZRCSDeviceList(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateZRCSDeviceList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->actionType2String(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->errorCode2String(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    .line 173
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;

    if-nez p1, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {p1}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->logZRCSDeviceInfo(Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;)V

    goto :goto_0

    :cond_2
    :goto_1
    const-string p0, "onUpdateZRCSDeviceList, ZRCSDeviceInfo List is null or empty"

    .line 174
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addWith(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 41
    :cond_1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 42
    :cond_2
    check-cast p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    .line 43
    iget v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->errorCode:I

    iget p1, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->errorCode:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getErrorCode()I
    .locals 1

    .line 60
    iget v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->errorCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->errorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initWith(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->clear()V

    .line 67
    invoke-virtual {p0, p1}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public mutableCopy()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;
    .locals 3

    .line 109
    new-instance v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;-><init>()V

    .line 111
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;

    .line 112
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->clone()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_0
    iget v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->errorCode:I

    iput v1, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->errorCode:I

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 56
    iput p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->errorCode:I

    return-void
.end method

.method public updateWith(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 80
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    const/4 v3, 0x0

    .line 85
    :goto_1
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_4

    .line 86
    invoke-virtual {p0, v3}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;

    if-nez v4, :cond_2

    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    new-instance v4, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getStatus()I

    move-result v9

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getMethods()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getIcon()Ljava/lang/String;

    move-result-object v11

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    const-string v6, "onUpdateZRCSDevices, update device ID=%s"

    .line 93
    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    invoke-static {v6, v7}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0, v3, v4}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    const-string v3, "onUpdateZRCSDevices, update device NOT FOUND !! ID=%s"

    .line 102
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
