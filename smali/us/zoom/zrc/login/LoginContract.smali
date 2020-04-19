.class public Lus/zoom/zrc/login/LoginContract;
.super Ljava/lang/Object;
.source "LoginContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/login/LoginContract$IPresenter;,
        Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;,
        Lus/zoom/zrc/login/LoginContract$IUI;,
        Lus/zoom/zrc/login/LoginContract$IFooter;,
        Lus/zoom/zrc/login/LoginContract$INavigator;,
        Lus/zoom/zrc/login/LoginContract$IUICache;,
        Lus/zoom/zrc/login/LoginContract$LoginErrorType;
    }
.end annotation


# static fields
.field static final URL_ADD_CALENDAR_SERVICE_BACK:Ljava/lang/String; = "calendarserviceaddback"

.field static final URL_PATH_ADD_GOOGLE_CALENDAR:Ljava/lang/String; = "%s/calendar/service/clientadd?service_type=3&%s&from_app=zoomrooms"

.field static final URL_PATH_SIGN_UP:Ljava/lang/String; = "%s/signup?from_app=zoomrooms"

.field static final URL_SIGN_IN_WITH_EMAIL:Ljava/lang/String; = "signin"

.field public static final URL_ZOOM_HELP_CENTER:Ljava/lang/String; = "https://support.zoom.us/hc/en-us/sections/200305533-Setup-Configuration"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
