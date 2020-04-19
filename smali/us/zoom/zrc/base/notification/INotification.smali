.class public abstract Lus/zoom/zrc/base/notification/INotification;
.super Ljava/lang/Object;
.source "INotification.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lus/zoom/zrc/base/notification/INotification;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onNotification(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lus/zoom/zrc/base/notification/INotification;->name:Ljava/lang/String;

    return-void
.end method
