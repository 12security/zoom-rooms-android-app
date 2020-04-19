.class public final enum Lus/zoom/zrc/login/LoginContract$LoginErrorType;
.super Ljava/lang/Enum;
.source "LoginContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/LoginContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrc/login/LoginContract$LoginErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum AssignRoomCalendar:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum AssignRoomLocation:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum ConnectWithZoomRoomError:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum CreateNewRoom:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum DeleteZoomRoomsFromWeb:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum DifferentLoginType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum GoogleLoginFailed:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum KickOutByReason:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum LoginWithZoom:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum None:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum QueryWithParingCode:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum SelectingStandaloneZRPForPairing:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum SetRoomPassCode:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum UpdateRoomName:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum UserRefreshZAKError:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum WebLoginFinish:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum ZoomRoomLoginFailed:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field public static final enum ZoomRoomSignedOut:Lus/zoom/zrc/login/LoginContract$LoginErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 31
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->None:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 32
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "LoginWithZoom"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->LoginWithZoom:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 33
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "GoogleLoginFailed"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->GoogleLoginFailed:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 35
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "QueryWithParingCode"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->QueryWithParingCode:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 37
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "KickOutByReason"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->KickOutByReason:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 39
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "WebLoginFinish"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->WebLoginFinish:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 41
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "CreateNewRoom"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->CreateNewRoom:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 42
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "UpdateRoomName"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->UpdateRoomName:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 43
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "AssignRoomCalendar"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->AssignRoomCalendar:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 44
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "AssignRoomLocation"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->AssignRoomLocation:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 45
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "SetRoomPassCode"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->SetRoomPassCode:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 47
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "ZoomRoomSignedOut"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->ZoomRoomSignedOut:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 48
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "ZoomRoomLoginFailed"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->ZoomRoomLoginFailed:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 50
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "DifferentLoginType"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->DifferentLoginType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 52
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "UserRefreshZAKError"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->UserRefreshZAKError:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 54
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "ConnectWithZoomRoomError"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->ConnectWithZoomRoomError:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 56
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "SelectingStandaloneZRPForPairing"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->SelectingStandaloneZRPForPairing:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 58
    new-instance v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "DeleteZoomRoomsFromWeb"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->DeleteZoomRoomsFromWeb:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/16 v0, 0x12

    .line 30
    new-array v0, v0, [Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->None:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->LoginWithZoom:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->GoogleLoginFailed:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->QueryWithParingCode:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->KickOutByReason:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->WebLoginFinish:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    aput-object v1, v0, v7

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->CreateNewRoom:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    aput-object v1, v0, v8

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->UpdateRoomName:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    aput-object v1, v0, v9

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->AssignRoomCalendar:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    aput-object v1, v0, v10

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->AssignRoomLocation:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    aput-object v1, v0, v11

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->SetRoomPassCode:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    aput-object v1, v0, v12

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->ZoomRoomSignedOut:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    aput-object v1, v0, v13

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->ZoomRoomLoginFailed:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    aput-object v1, v0, v14

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->DifferentLoginType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->UserRefreshZAKError:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->ConnectWithZoomRoomError:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->SelectingStandaloneZRPForPairing:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->DeleteZoomRoomsFromWeb:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->$VALUES:[Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrc/login/LoginContract$LoginErrorType;
    .locals 1

    .line 30
    const-class v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrc/login/LoginContract$LoginErrorType;
    .locals 1

    .line 30
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->$VALUES:[Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-virtual {v0}, [Lus/zoom/zrc/login/LoginContract$LoginErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    return-object v0
.end method
