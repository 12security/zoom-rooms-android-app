.class final Lus/zoom/zrc/MeetingActivity$5;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "MeetingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/MeetingActivity;->showRecordingConsent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/base/util/ZRCForegroundTask<",
        "Lus/zoom/zrc/MeetingActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$shouldShowConfirmDialog:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 351
    iput-boolean p1, p0, Lus/zoom/zrc/MeetingActivity$5;->val$shouldShowConfirmDialog:Z

    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/zrc/MeetingActivity;)V
    .locals 1

    .line 354
    iget-boolean v0, p0, Lus/zoom/zrc/MeetingActivity$5;->val$shouldShowConfirmDialog:Z

    invoke-static {p1, v0}, Lus/zoom/zrc/MeetingActivity;->access$000(Lus/zoom/zrc/MeetingActivity;Z)V

    return-void
.end method

.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 351
    check-cast p1, Lus/zoom/zrc/MeetingActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/MeetingActivity$5;->run(Lus/zoom/zrc/MeetingActivity;)V

    return-void
.end method
