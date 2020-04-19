.class Lus/zoom/zrc/MeetingActivity$1;
.super Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;
.source "MeetingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/MeetingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/MeetingActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/MeetingActivity;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity$1;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeetingErrorNotification(ILjava/lang/String;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;->onMeetingErrorNotification(ILjava/lang/String;)V

    return-void
.end method
