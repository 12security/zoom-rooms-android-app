.class public Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;
.super Ljava/lang/Object;
.source "ZRCThirdPartyMeetingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canDialIn(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z
    .locals 2
    .param p0    # Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 113
    invoke-static {p0}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->invalidThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 117
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 118
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isThirdPartyMeetingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-static {p0}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->isValidMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {p0}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->canDialInNumber(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static canDialInNumber(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z
    .locals 6

    .line 54
    invoke-static {p0}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->invalidThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 58
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getDialNumbers()Ljava/util/List;

    move-result-object p0

    .line 59
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 63
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCDialNumber;

    .line 64
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDialNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDialNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_6

    .line 72
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "+"

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    :cond_5
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    :try_start_0
    const-string v5, ""

    .line 79
    invoke-virtual {v4, v3, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 80
    invoke-virtual {v4, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 81
    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v4, v3, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v4}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 83
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 92
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutCountryCode()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/CountryCode;

    .line 93
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_8
    return v1
.end method

.method public static canJoinRoomSystem(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z
    .locals 6
    .param p0    # Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 124
    invoke-static {p0}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->invalidThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 128
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getSipAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getH323Address()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsCrcCalloutOnly()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->isCrcCalloutOnlyEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 131
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/Model;->isThirdPartyMeetingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 132
    invoke-static {p0}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->isValidMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 133
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p0

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isH323Enabled()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v3, :cond_4

    .line 134
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static getDialNumber(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 0
    .param p0    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    invoke-static {p0}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->getThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object p0

    .line 154
    invoke-static {p0}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->getDialNumber(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDialNumber(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Ljava/lang/String;
    .locals 2
    .param p0    # Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 139
    invoke-static {p0}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->invalidThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getDialNumbers()Ljava/util/List;

    move-result-object p0

    .line 144
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 148
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lus/zoom/zrcsdk/model/ZRCDialNumber;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDialNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDialNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingListItem()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object p0

    invoke-static {p0}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->getThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object p0

    return-object p0
.end method

.method public static getThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object p0

    .line 27
    invoke-static {p0}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->invalidThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static invalidThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z
    .locals 3
    .param p0    # Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 45
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getServiceProvider()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getServiceProvider()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getServiceProvider()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getServiceProvider()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getServiceProvider()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 50
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getServiceProvider()I

    move-result p0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static isValidMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z
    .locals 2
    .param p0    # Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    invoke-static {p0}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->invalidThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getMeetingNumber()Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-static {p0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-static {v0, p0}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
