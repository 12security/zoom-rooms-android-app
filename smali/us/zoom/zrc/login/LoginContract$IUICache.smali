.class public interface abstract Lus/zoom/zrc/login/LoginContract$IUICache;
.super Ljava/lang/Object;
.source "LoginContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/LoginContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUICache"
.end annotation


# static fields
.field public static final FLAG_ALL:I = 0x3

.field public static final FLAG_CREATE_ROOM:I = 0x2

.field public static final FLAG_SIGN_IN:I = 0x1


# virtual methods
.method public abstract canCreateRoom(Landroid/content/Context;)Z
.end method

.method public abstract clear(I)V
.end method

.method public abstract getBillingType()I
.end method

.method public abstract getSelectedCalendarResource()Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;
.end method

.method public abstract getSelectedCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
.end method

.method public abstract getSelectedLocation()Lus/zoom/zrcsdk/model/ZRCLocationTree;
.end method

.method public abstract getValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract selectCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V
.end method

.method public abstract selectCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V
.end method

.method public abstract selectLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
.end method

.method public abstract setBillingType(I)V
.end method

.method public abstract setKeyValue(ILjava/lang/String;Ljava/lang/String;)V
.end method
