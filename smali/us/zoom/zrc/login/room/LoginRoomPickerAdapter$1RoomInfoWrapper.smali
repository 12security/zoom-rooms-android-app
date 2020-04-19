.class Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;
.super Ljava/lang/Object;
.source "LoginRoomPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->processWithLetterStarts(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoomInfoWrapper"
.end annotation


# instance fields
.field private isUpperFirstLetter:Z

.field private recoverDisplayName:Ljava/lang/String;

.field private roomInfo:Lus/zoom/zrcsdk/model/RoomInfo;

.field final synthetic this$0:Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->this$0:Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;)Lus/zoom/zrcsdk/model/RoomInfo;
    .locals 0

    .line 445
    iget-object p0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->roomInfo:Lus/zoom/zrcsdk/model/RoomInfo;

    return-object p0
.end method

.method static synthetic access$702(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;Lus/zoom/zrcsdk/model/RoomInfo;)Lus/zoom/zrcsdk/model/RoomInfo;
    .locals 0

    .line 445
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->roomInfo:Lus/zoom/zrcsdk/model/RoomInfo;

    return-object p1
.end method

.method static synthetic access$800(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;)Ljava/lang/String;
    .locals 0

    .line 445
    iget-object p0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->recoverDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 445
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->recoverDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;)Z
    .locals 0

    .line 445
    iget-boolean p0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->isUpperFirstLetter:Z

    return p0
.end method

.method static synthetic access$902(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;Z)Z
    .locals 0

    .line 445
    iput-boolean p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->isUpperFirstLetter:Z

    return p1
.end method
