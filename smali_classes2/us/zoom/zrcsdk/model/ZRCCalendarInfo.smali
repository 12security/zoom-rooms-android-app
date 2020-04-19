.class public Lus/zoom/zrcsdk/model/ZRCCalendarInfo;
.super Ljava/lang/Object;
.source "ZRCCalendarInfo.java"


# instance fields
.field private calendarType:I

.field private exchangeAccessToken:Ljava/lang/String;

.field private exchangeAccessTokenRefreshInterval:J

.field private exchangeDomain:Ljava/lang/String;

.field private exchangeEMSURL:Ljava/lang/String;

.field private exchangeImpersonationEnabled:Z

.field private exchangePassword:Ljava/lang/String;

.field private exchangeRoomEmail:Ljava/lang/String;

.field private nextRefreshExchangeCalendarAccessTokenTime:J

.field private nextRefreshGoogleCalendarAccessTokenTime:J

.field private refreshCalendarAccessTokenFailedTimes:I

.field private roomResourceEmail:Ljava/lang/String;

.field private zpGoogleAccessTokenRefreshInterval:J

.field private zrCalenderResourceId:Ljava/lang/String;

.field private zrGoogleAccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 96
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    .line 97
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->calendarType:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->calendarType:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeImpersonationEnabled:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeImpersonationEnabled:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zpGoogleAccessTokenRefreshInterval:J

    iget-wide v4, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zpGoogleAccessTokenRefreshInterval:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeAccessTokenRefreshInterval:J

    iget-wide v4, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeAccessTokenRefreshInterval:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->nextRefreshGoogleCalendarAccessTokenTime:J

    iget-wide v4, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->nextRefreshGoogleCalendarAccessTokenTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->nextRefreshExchangeCalendarAccessTokenTime:J

    iget-wide v4, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->nextRefreshExchangeCalendarAccessTokenTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->refreshCalendarAccessTokenFailedTimes:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->refreshCalendarAccessTokenFailedTimes:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeDomain:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeDomain:Ljava/lang/String;

    .line 104
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeEMSURL:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeEMSURL:Ljava/lang/String;

    .line 105
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeRoomEmail:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeRoomEmail:Ljava/lang/String;

    .line 106
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangePassword:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangePassword:Ljava/lang/String;

    .line 107
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeAccessToken:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeAccessToken:Ljava/lang/String;

    .line 108
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zrGoogleAccessToken:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zrGoogleAccessToken:Ljava/lang/String;

    .line 109
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->roomResourceEmail:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->roomResourceEmail:Ljava/lang/String;

    .line 110
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zrCalenderResourceId:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zrCalenderResourceId:Ljava/lang/String;

    .line 111
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCalendarType()I
    .locals 1

    .line 31
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->calendarType:I

    return v0
.end method

.method public getExchangeAccessToken()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeDomain()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeEMSURL()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeEMSURL:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangePassword()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeRoomEmail()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeRoomEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRefreshExchangeCalendarAccessTokenTime()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->nextRefreshExchangeCalendarAccessTokenTime:J

    return-wide v0
.end method

.method public getNextRefreshGoogleCalendarAccessTokenTime()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->nextRefreshGoogleCalendarAccessTokenTime:J

    return-wide v0
.end method

.method public getRefreshCalendarAccessTokenFailedTimes()I
    .locals 1

    .line 79
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->refreshCalendarAccessTokenFailedTimes:I

    return v0
.end method

.method public getRoomResourceEmail()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->roomResourceEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getZrCalenderResourceId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zrCalenderResourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getZrGoogleAccessToken()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zrGoogleAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xf

    .line 116
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->calendarType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeImpersonationEnabled:Z

    .line 117
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeDomain:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeEMSURL:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeRoomEmail:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangePassword:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeAccessToken:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zrGoogleAccessToken:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->roomResourceEmail:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zrCalenderResourceId:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zpGoogleAccessTokenRefreshInterval:J

    .line 125
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeAccessTokenRefreshInterval:J

    .line 126
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->nextRefreshGoogleCalendarAccessTokenTime:J

    .line 127
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->nextRefreshExchangeCalendarAccessTokenTime:J

    .line 128
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->refreshCalendarAccessTokenFailedTimes:I

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 116
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isExchangeImpersonationEnabled()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeImpersonationEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 134
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "calendarType"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->calendarType:I

    .line 135
    invoke-static {v2}, Lus/zoom/zrcsdk/model/ZRCCalendarType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "exchangeImpersonationEnabled"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeImpersonationEnabled:Z

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "roomResourceEmail"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->roomResourceEmail:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "zrCalenderResourceId"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zrCalenderResourceId:Ljava/lang/String;

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "exchangeDomain"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeDomain:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "exchangeEMSURL"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeEMSURL:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "exchangeRoomEmail"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeRoomEmail:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 143
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCLog;->getLevel()I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "exchangePassword"

    .line 144
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangePassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "exchangeAccessToken"

    .line 145
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "zrGoogleAccessToken"

    .line 146
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zrGoogleAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    goto :goto_0

    :cond_0
    const-string v1, "exchangePassword"

    .line 148
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangePassword:Ljava/lang/String;

    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->logPassword(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "exchangeAccessToken"

    .line 149
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeAccessToken:Ljava/lang/String;

    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->logPassword(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "zrGoogleAccessToken"

    .line 150
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zrGoogleAccessToken:Ljava/lang/String;

    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->logPassword(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 153
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 154
    iget-wide v3, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zpGoogleAccessTokenRefreshInterval:J

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_1

    const-string v9, "zpGoogleAccessTokenRefreshInterval"

    .line 155
    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInSeconds(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v3, "nextRefreshGoogleCalendarAccessTokenTime"

    .line 156
    iget-wide v9, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zpGoogleAccessTokenRefreshInterval:J

    mul-long v9, v9, v5

    add-long/2addr v9, v1

    invoke-static {v9, v10}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeInMillis(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 158
    :cond_1
    iget-wide v3, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeAccessTokenRefreshInterval:J

    cmp-long v9, v3, v7

    if-lez v9, :cond_2

    const-string v7, "exchangeAccessTokenRefreshInterval"

    .line 159
    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInSeconds(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v3, "nextRefreshExchangeCalendarAccessTokenTime"

    .line 160
    iget-wide v7, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeAccessTokenRefreshInterval:J

    mul-long v7, v7, v5

    add-long/2addr v1, v7

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeInMillis(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 162
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateExchangeAccessTokenRefreshInterval(J)V
    .locals 4

    .line 88
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->exchangeAccessTokenRefreshInterval:J

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->nextRefreshExchangeCalendarAccessTokenTime:J

    return-void
.end method

.method public updateGoogleAccessTokenRefreshInterval(J)V
    .locals 4

    .line 83
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->zpGoogleAccessTokenRefreshInterval:J

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->nextRefreshGoogleCalendarAccessTokenTime:J

    return-void
.end method
