.class public interface abstract Lus/zoom/zrcsdk/IMeetingShareEventListener;
.super Ljava/lang/Object;
.source "IMeetingShareEventListener.java"


# virtual methods
.method public abstract onMeetingAllShareSourcesNotification(Ljava/util/List;[I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCShareSource;",
            ">;[I)V"
        }
    .end annotation
.end method

.method public abstract onMeetingShareSettingStatusNotification(Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;)V
.end method
