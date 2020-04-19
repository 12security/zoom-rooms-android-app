.class public interface abstract Lus/zoom/zrcsdk/IWebPullCallBackListener;
.super Ljava/lang/Object;
.source "IWebPullCallBackListener.java"


# virtual methods
.method public abstract LoginInfoPullBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZZZZZZZZLjava/util/ArrayList;IIIZIIIZIIZLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;JJJIJZIZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "ZZZZZZZZZ",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;IIIZIIIZIIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "JJJIJZIZ)V"
        }
    .end annotation
.end method

.method public abstract onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;)V
.end method
