.class public Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;
.super Ljava/lang/Object;
.source "ZRCMeetingCloudRecordingError.java"


# static fields
.field public static ZRCMeetingCloudRecordingErrorKMSTokenNotReady:I = -0x64

.field public static ZRCMeetingCloudRecordingErrorStorageFull:I


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 13
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;->errorCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 17
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;->errorCode:I

    return-void
.end method
