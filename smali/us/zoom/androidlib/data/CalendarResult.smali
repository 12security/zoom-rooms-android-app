.class public Lus/zoom/androidlib/data/CalendarResult;
.super Ljava/lang/Object;
.source "CalendarResult.java"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mEventId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmAccountType()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lus/zoom/androidlib/data/CalendarResult;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getmEventId()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lus/zoom/androidlib/data/CalendarResult;->mEventId:J

    return-wide v0
.end method

.method public setmAccountType(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lus/zoom/androidlib/data/CalendarResult;->mAccountType:Ljava/lang/String;

    return-void
.end method

.method public setmEventId(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lus/zoom/androidlib/data/CalendarResult;->mEventId:J

    return-void
.end method
