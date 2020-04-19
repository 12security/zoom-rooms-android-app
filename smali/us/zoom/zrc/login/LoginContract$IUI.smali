.class public interface abstract Lus/zoom/zrc/login/LoginContract$IUI;
.super Ljava/lang/Object;
.source "LoginContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/LoginContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUI"
.end annotation


# virtual methods
.method public abstract getFooter()Lus/zoom/zrc/login/LoginContract$IFooter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMainThreadHandler()Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onShowWaitingDialog(ZLjava/lang/CharSequence;)V
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
