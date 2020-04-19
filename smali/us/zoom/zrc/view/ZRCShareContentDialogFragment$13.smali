.class synthetic Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;
.super Ljava/lang/Object;
.source "ZRCShareContentDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/ZRCShareContentDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$us$zoom$zrc$model$ZRCShareStopType:[I

.field static final synthetic $SwitchMap$us$zoom$zrc$share_camera$model$ZRCSharingType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1673
    invoke-static {}, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->values()[Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;->$SwitchMap$us$zoom$zrc$share_camera$model$ZRCSharingType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;->$SwitchMap$us$zoom$zrc$share_camera$model$ZRCSharingType:[I

    sget-object v2, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-virtual {v2}, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;->$SwitchMap$us$zoom$zrc$share_camera$model$ZRCSharingType:[I

    sget-object v3, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-virtual {v3}, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;->$SwitchMap$us$zoom$zrc$share_camera$model$ZRCSharingType:[I

    sget-object v4, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Camera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-virtual {v4}, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;->$SwitchMap$us$zoom$zrc$share_camera$model$ZRCSharingType:[I

    sget-object v5, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-virtual {v5}, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 1398
    :catch_3
    invoke-static {}, Lus/zoom/zrc/model/ZRCShareStopType;->values()[Lus/zoom/zrc/model/ZRCShareStopType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;->$SwitchMap$us$zoom$zrc$model$ZRCShareStopType:[I

    :try_start_4
    sget-object v4, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;->$SwitchMap$us$zoom$zrc$model$ZRCShareStopType:[I

    sget-object v5, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeBlackMagic:Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-virtual {v5}, Lus/zoom/zrc/model/ZRCShareStopType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;->$SwitchMap$us$zoom$zrc$model$ZRCShareStopType:[I

    sget-object v4, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeCamera:Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-virtual {v4}, Lus/zoom/zrc/model/ZRCShareStopType;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;->$SwitchMap$us$zoom$zrc$model$ZRCShareStopType:[I

    sget-object v1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeZRW:Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCShareStopType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;->$SwitchMap$us$zoom$zrc$model$ZRCShareStopType:[I

    sget-object v1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeWhiteboardCamera:Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCShareStopType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;->$SwitchMap$us$zoom$zrc$model$ZRCShareStopType:[I

    sget-object v1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeOther:Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCShareStopType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
