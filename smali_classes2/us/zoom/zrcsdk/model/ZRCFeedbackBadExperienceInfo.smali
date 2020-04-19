.class public Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;
.super Ljava/lang/Object;
.source "ZRCFeedbackBadExperienceInfo.java"


# instance fields
.field private checked:Z

.field private reason:Ljava/lang/String;

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 14
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->value:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->checked:Z

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->reason:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 17
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->value:I

    return-void
.end method
