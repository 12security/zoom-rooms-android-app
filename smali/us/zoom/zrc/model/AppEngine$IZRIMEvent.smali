.class public interface abstract Lus/zoom/zrc/model/AppEngine$IZRIMEvent;
.super Ljava/lang/Object;
.source "AppEngine.java"

# interfaces
.implements Lus/zoom/androidlib/util/IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/model/AppEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IZRIMEvent"
.end annotation


# virtual methods
.method public abstract onAddLegacyRoom(Ljava/lang/String;Z)V
.end method

.method public abstract onDynamicContactListNotification(Ljava/util/ArrayList;Ljava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation
.end method

.method public abstract onDynamicContactsBasicInfoNotification(III)V
.end method

.method public abstract onFinishRebuildContactData()V
.end method

.method public abstract onFinishReceivingLegacyRoomList(Z)V
.end method

.method public abstract onImAddContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onImConnectingResultNotification(I)V
.end method

.method public abstract onImFinishTransportingContactsNotification()V
.end method

.method public abstract onImMyPresenceChangedNotification(ILjava/lang/String;)V
.end method

.method public abstract onImReconnectingNotification()V
.end method

.method public abstract onImStartTransportingContactsNotification()V
.end method

.method public abstract onImUpdateContactNotification(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onImUpdateContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onSearchBuddyOnWebDidFinishWithResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartReceivingLegacyRoomList(Z)V
.end method
