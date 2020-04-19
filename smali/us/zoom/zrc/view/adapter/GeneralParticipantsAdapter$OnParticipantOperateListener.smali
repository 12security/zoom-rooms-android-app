.class public interface abstract Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnParticipantOperateListener;
.super Ljava/lang/Object;
.source "GeneralParticipantsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnParticipantOperateListener"
.end annotation


# virtual methods
.method public abstract onClickAdmitAllSilentParticipants()V
.end method

.method public abstract onClickAdmitSilentParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
.end method

.method public abstract onClickRemoveSilentParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
.end method
