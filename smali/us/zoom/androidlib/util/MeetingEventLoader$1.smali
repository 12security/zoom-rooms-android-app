.class Lus/zoom/androidlib/util/MeetingEventLoader$1;
.super Ljava/lang/Object;
.source "MeetingEventLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/MeetingEventLoader;->queryMeetingsByDate(ILjava/util/ArrayList;JLus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/MeetingEventLoader;

.field final synthetic val$events:Ljava/util/ArrayList;

.field final synthetic val$filter:Lus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;

.field final synthetic val$meetingEvents:Ljava/util/ArrayList;

.field final synthetic val$successCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/MeetingEventLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;Lus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;Ljava/lang/Runnable;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lus/zoom/androidlib/util/MeetingEventLoader$1;->this$0:Lus/zoom/androidlib/util/MeetingEventLoader;

    iput-object p2, p0, Lus/zoom/androidlib/util/MeetingEventLoader$1;->val$meetingEvents:Ljava/util/ArrayList;

    iput-object p3, p0, Lus/zoom/androidlib/util/MeetingEventLoader$1;->val$events:Ljava/util/ArrayList;

    iput-object p4, p0, Lus/zoom/androidlib/util/MeetingEventLoader$1;->val$filter:Lus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;

    iput-object p5, p0, Lus/zoom/androidlib/util/MeetingEventLoader$1;->val$successCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 61
    iget-object v0, p0, Lus/zoom/androidlib/util/MeetingEventLoader$1;->this$0:Lus/zoom/androidlib/util/MeetingEventLoader;

    iget-object v1, p0, Lus/zoom/androidlib/util/MeetingEventLoader$1;->val$meetingEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lus/zoom/androidlib/util/MeetingEventLoader$1;->val$events:Ljava/util/ArrayList;

    iget-object v3, p0, Lus/zoom/androidlib/util/MeetingEventLoader$1;->val$filter:Lus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;

    iget-object v4, p0, Lus/zoom/androidlib/util/MeetingEventLoader$1;->val$successCallback:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lus/zoom/androidlib/util/MeetingEventLoader;->access$000(Lus/zoom/androidlib/util/MeetingEventLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;Lus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;Ljava/lang/Runnable;)V

    return-void
.end method
