.class public Lus/zoom/androidlib/util/UIUtil;
.super Ljava/lang/Object;
.source "UIUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/UIUtil$CommandResult;
    }
.end annotation


# static fields
.field public static final AT_ALL_SUFFIX:Ljava/lang/String; = ".atall"

.field private static final MIUI_VERSION_NOT_SET:I = -0x2

.field public static final MIUI_VERSION_UNDEFINED:I = -0x1

.field public static final MIUI_VERSION_V2:I = 0x0

.field public static final MIUI_VERSION_V3:I = 0x1

.field public static final MIUI_VERSION_V4:I = 0x2

.field public static final MIUI_VERSION_V5:I = 0x3

.field public static final MIUI_VERSION_V6:I = 0x4

.field private static final TABLET_MIN_SCREEN_SIZE:I = 0x208

.field private static final TAG:Ljava/lang/String; = "UIUtil"

.field private static gMiuiVersionCode:I = -0x2

.field private static gProxiWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildLinkTextView(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 433
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 438
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 440
    new-instance v1, Lus/zoom/androidlib/util/UIUtil$1;

    const-string v2, ""

    invoke-direct {v1, v2, p2}, Lus/zoom/androidlib/util/UIUtil$1;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 449
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 451
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static varargs closeIO([Ljava/io/Closeable;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 655
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 658
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-static {p0, p1, v0}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "input_method"

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-nez p0, :cond_1

    return-void

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static closeSoftKeyboardInActivity(Lus/zoom/androidlib/app/ZMActivity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 161
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "input_method"

    .line 165
    invoke-virtual {p0, v1}, Lus/zoom/androidlib/app/ZMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    if-nez p0, :cond_0

    float-to-int p0, p1

    return p0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static dismissWaitingDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 892
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 895
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/androidlib/app/ZMDialogFragment;

    if-eqz p0, :cond_1

    .line 897
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static execCmd(Ljava/lang/String;Z)Lus/zoom/androidlib/util/UIUtil$CommandResult;
    .locals 3

    const/4 v0, 0x1

    .line 583
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0}, Lus/zoom/androidlib/util/UIUtil;->execCmd([Ljava/lang/String;ZZ)Lus/zoom/androidlib/util/UIUtil$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCmd(Ljava/util/List;ZZ)Lus/zoom/androidlib/util/UIUtil$CommandResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lus/zoom/androidlib/util/UIUtil$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 586
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/util/UIUtil;->execCmd([Ljava/lang/String;ZZ)Lus/zoom/androidlib/util/UIUtil$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCmd([Ljava/lang/String;ZZ)Lus/zoom/androidlib/util/UIUtil$CommandResult;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_b

    .line 600
    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_e

    .line 605
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string p1, "su"

    goto :goto_0

    :cond_1
    const-string p1, "sh"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 615
    :try_start_1
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 616
    :try_start_2
    array-length v7, p0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, p0, v8

    if-nez v9, :cond_2

    goto :goto_2

    .line 618
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->write([B)V

    const-string v9, "\n"

    .line 619
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "exit\n"

    .line 622
    invoke-virtual {v6, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 624
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    if-eqz p2, :cond_5

    .line 626
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 627
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 628
    :try_start_4
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getStardardCharSetUTF8()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 629
    :try_start_5
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getStardardCharSetUTF8()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 631
    :goto_3
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 632
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 634
    :cond_4
    :goto_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 635
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    nop

    goto :goto_a

    :catchall_1
    move-exception p0

    move-object v8, v0

    :goto_5
    move-object v0, v7

    goto :goto_8

    :catch_1
    move-object v8, v0

    goto :goto_a

    :catch_2
    move-object v7, v0

    goto :goto_9

    :catch_3
    move-object p2, v0

    goto :goto_7

    :cond_5
    move-object p0, v0

    move-object p2, p0

    move-object v7, p2

    move-object v8, v7

    .line 641
    :cond_6
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v6, v3, v5

    aput-object v7, v3, v4

    aput-object v8, v3, v2

    invoke-static {v3}, Lus/zoom/androidlib/util/UIUtil;->closeIO([Ljava/io/Closeable;)V

    if-eqz p1, :cond_8

    .line 643
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto :goto_b

    :catchall_2
    move-exception p0

    move-object v8, v0

    goto :goto_8

    :catch_4
    move-object p0, v0

    move-object p2, p0

    :goto_7
    move-object v7, p2

    goto :goto_9

    :catchall_3
    move-exception p0

    move-object v6, v0

    move-object v8, v6

    .line 641
    :goto_8
    new-array p2, v3, [Ljava/io/Closeable;

    aput-object v6, p2, v5

    aput-object v0, p2, v4

    aput-object v8, p2, v2

    invoke-static {p2}, Lus/zoom/androidlib/util/UIUtil;->closeIO([Ljava/io/Closeable;)V

    if-eqz p1, :cond_7

    .line 643
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 645
    :cond_7
    throw p0

    :catch_5
    move-object p0, v0

    move-object p2, p0

    move-object v6, p2

    move-object v7, v6

    :goto_9
    move-object v8, v7

    .line 641
    :goto_a
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v6, v3, v5

    aput-object v7, v3, v4

    aput-object v8, v3, v2

    invoke-static {v3}, Lus/zoom/androidlib/util/UIUtil;->closeIO([Ljava/io/Closeable;)V

    if-eqz p1, :cond_8

    goto :goto_6

    .line 646
    :cond_8
    :goto_b
    new-instance p1, Lus/zoom/androidlib/util/UIUtil$CommandResult;

    if-nez p0, :cond_9

    move-object p0, v0

    goto :goto_c

    .line 648
    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_c
    if-nez p2, :cond_a

    goto :goto_d

    .line 649
    :cond_a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-direct {p1, v1, p0, v0}, Lus/zoom/androidlib/util/UIUtil$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 607
    :catch_6
    new-instance p0, Lus/zoom/androidlib/util/UIUtil$CommandResult;

    invoke-direct {p0, v1, v0, v0}, Lus/zoom/androidlib/util/UIUtil$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 601
    :cond_b
    :goto_e
    new-instance p0, Lus/zoom/androidlib/util/UIUtil$CommandResult;

    invoke-direct {p0, v1, v0, v0}, Lus/zoom/androidlib/util/UIUtil$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static gProxiWakeLockHeld()Z
    .locals 1

    .line 429
    sget-object v0, Lus/zoom/androidlib/util/UIUtil;->gProxiWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static generateAtallSessionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 944
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 946
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".atall"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAbsoluteRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 324
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 326
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 327
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->getAbsoluteRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    .line 328
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 329
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 330
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 331
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v0
.end method

.method public static getCurrentOrientation(Landroid/content/Context;)I
    .locals 0

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return p0
.end method

.method public static getDefaultOrientation(Landroid/content/Context;)I
    .locals 2

    const-string v0, "window"

    .line 366
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 371
    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 372
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    const/4 v1, 0x0

    goto :goto_0

    .line 383
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 384
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    goto :goto_0

    .line 378
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 379
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    :goto_0
    if-le v1, p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "window"

    .line 206
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 210
    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 211
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastICS_MR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 213
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 214
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0

    .line 216
    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    return p0
.end method

.method public static getDisplayHeightInDip(Landroid/content/Context;)F
    .locals 1

    .line 220
    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    .line 221
    invoke-static {p0, v0}, Lus/zoom/androidlib/util/UIUtil;->px2dip(Landroid/content/Context;I)F

    move-result p0

    return p0
.end method

.method public static getDisplayMinWidthInDip(Landroid/content/Context;)F
    .locals 2

    .line 123
    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    .line 124
    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->getDisplayHeight(Landroid/content/Context;)I

    move-result v1

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 126
    invoke-static {p0, v0}, Lus/zoom/androidlib/util/UIUtil;->px2dip(Landroid/content/Context;I)F

    move-result p0

    return p0
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "window"

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 191
    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 192
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastICS_MR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 194
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 195
    iget p0, v0, Landroid/graphics/Point;->x:I

    return p0

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    return p0
.end method

.method public static getDisplayWidthInDip(Landroid/content/Context;)F
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 201
    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    .line 202
    invoke-static {p0, v0}, Lus/zoom/androidlib/util/UIUtil;->px2dip(Landroid/content/Context;I)F

    move-result p0

    return p0
.end method

.method public static getMIUIVersionCode()I
    .locals 2

    .line 568
    sget v0, Lus/zoom/androidlib/util/UIUtil;->gMiuiVersionCode:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-string v0, "ro.miui.ui.version.code"

    const-string v1, "-1"

    .line 569
    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 570
    sput v1, Lus/zoom/androidlib/util/UIUtil;->gMiuiVersionCode:I

    .line 572
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lus/zoom/androidlib/util/UIUtil;->gMiuiVersionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :catch_0
    :cond_0
    sget v0, Lus/zoom/androidlib/util/UIUtil;->gMiuiVersionCode:I

    return v0
.end method

.method public static getMetricHeight(Landroid/content/Context;)I
    .locals 0

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 231
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getMetricWith(Landroid/content/Context;)I
    .locals 0

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 226
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getprop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lus/zoom/androidlib/util/UIUtil;->execCmd(Ljava/lang/String;Z)Lus/zoom/androidlib/util/UIUtil$CommandResult;

    move-result-object p0

    .line 592
    iget-object v0, p0, Lus/zoom/androidlib/util/UIUtil$CommandResult;->successMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object p0, p0, Lus/zoom/androidlib/util/UIUtil$CommandResult;->successMsg:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getScreenCategoryName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 309
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const-string p0, "xlarge"

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-lt p0, v0, :cond_1

    const-string p0, "large"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-lt p0, v0, :cond_2

    const-string p0, "normal"

    goto :goto_0

    :cond_2
    const-string p0, "small"

    :goto_0
    return-object p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 560
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 562
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/high16 v0, 0x41c80000    # 25.0f

    .line 564
    invoke-static {p0, v0}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    return-object p1

    .line 546
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 548
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "build.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 549
    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method public static hasBuildProperty(Ljava/lang/String;)Z
    .locals 0

    .line 688
    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isEMUI()Z
    .locals 1

    const-string v0, "ro.build.version.emui"

    .line 713
    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isFlymeOS()Z
    .locals 2

    .line 701
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "Meizu"

    .line 705
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isFullScreen(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isImmersedModeSupported()Z
    .locals 3

    .line 718
    invoke-static {}, Lus/zoom/androidlib/util/UIUtil;->getMIUIVersionCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    return v1

    .line 721
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/util/UIUtil;->isFlymeOS()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isLandscapeMode(Landroid/content/Context;)Z
    .locals 1

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLargeScreen(Landroid/content/Context;)Z
    .locals 1

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 256
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLegalSpanIndex(Landroid/text/Spanned;II)Z
    .locals 2
    .param p0    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 929
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_5

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    if-ge p2, p1, :cond_2

    return v1

    .line 937
    :cond_2
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    if-ge p1, v0, :cond_4

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result p0

    if-lt p2, p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    return v1
.end method

.method public static isMIUI()Z
    .locals 1

    const-string v0, "ro.miui.ui.version.code"

    .line 692
    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->hasBuildProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.miui.ui.version.name"

    .line 693
    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->hasBuildProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isNavtiveSupportIOSEmoji()Z
    .locals 2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string v0, "android.hardware.telephony"

    .line 268
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPortraitMode(Landroid/content/Context;)Z
    .locals 1

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSamsung()Z
    .locals 2

    const-string v0, "samsung"

    .line 731
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isScreenLocked(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "keyguard"

    .line 917
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_0

    .line 918
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSmallScreen(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 275
    :cond_0
    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->getDisplayHeightInDip(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x44020000    # 520.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidthInDip(Landroid/content/Context;)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isTV(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 296
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 300
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    const-string v0, "android.hardware.type.television"

    .line 301
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const-string v1, "android.hardware.type.television"

    .line 303
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.software.leanback"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 289
    :cond_0
    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->getDisplayHeightInDip(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x44020000    # 520.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidthInDip(Landroid/content/Context;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->isTV(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isTabletOrTV(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 282
    :cond_0
    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->isTV(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isXLargeScreen(Landroid/content/Context;)Z
    .locals 1

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 250
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static openSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-static {p0, p1, v0}, Lus/zoom/androidlib/util/UIUtil;->openSoftKeyboard(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static openSoftKeyboard(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "input_method"

    .line 175
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-nez p0, :cond_1

    return-void

    .line 178
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static openURL(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 337
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 341
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {v1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 350
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 352
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    .line 353
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 354
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.BROWSABLE"

    .line 355
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0

    :cond_2
    :goto_1
    return v0
.end method

.method public static px2dip(Landroid/content/Context;I)F
    .locals 0

    if-nez p0, :cond_0

    int-to-float p0, p1

    return p0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, p0

    return p1
.end method

.method public static px2sp(Landroid/content/Context;I)F
    .locals 0

    if-nez p0, :cond_0

    int-to-float p0, p1

    return p0

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    int-to-float p1, p1

    div-float/2addr p1, p0

    return p1
.end method

.method public static renderStatueBar(Landroid/app/Activity;ZI)V
    .locals 3

    .line 524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 525
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 526
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 527
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 528
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    if-eqz p1, :cond_0

    or-int/lit16 p1, v2, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v2, -0x2001

    .line 534
    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    const/high16 p1, -0x80000000

    .line 536
    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    const/high16 p1, 0x4000000

    .line 537
    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 538
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_2
    return-void
.end method

.method public static setBadgeNumForEMUI(Landroid/content/Context;I)V
    .locals 3

    .line 832
    invoke-static {}, Lus/zoom/androidlib/util/UIUtil;->isEMUI()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 837
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 838
    invoke-virtual {v1}, Lus/zoom/androidlib/app/ZMActivity;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-lez p1, :cond_2

    if-eqz v0, :cond_2

    return-void

    .line 847
    :cond_2
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    .line 848
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "class"

    const-string v2, "com.zipow.videobox.LauncherActivity"

    .line 849
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "badgenumber"

    .line 850
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 851
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.huawei.android.launcher.settings/badge/"

    .line 852
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "change_badge"

    const/4 v2, 0x0

    .line 851
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setBadgeNumForSamsung(Landroid/content/Context;I)V
    .locals 3

    .line 862
    invoke-static {}, Lus/zoom/androidlib/util/UIUtil;->isSamsung()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.zipow.videobox.LauncherActivity"

    .line 865
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "badge_count"

    .line 866
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "badge_count_package_name"

    .line 867
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "badge_count_class_name"

    .line 868
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setNotificationMessageCount(Landroid/content/Context;Landroid/app/Notification;I)Z
    .locals 4

    .line 811
    :try_start_0
    invoke-static {}, Lus/zoom/androidlib/util/UIUtil;->isMIUI()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "android.app.MiuiNotification"

    .line 812
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 813
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 814
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "messageCount"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 815
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 816
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "extraNotification"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 818
    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 821
    :cond_0
    invoke-static {p0, p2}, Lus/zoom/androidlib/util/UIUtil;->setBadgeNumForEMUI(Landroid/content/Context;I)V

    .line 822
    invoke-static {p0, p2}, Lus/zoom/androidlib/util/UIUtil;->setBadgeNumForSamsung(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setStatusBarDarkMode(Landroid/app/Activity;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 743
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/util/UIUtil;->getMIUIVersionCode()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 744
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/UIUtil;->setStatusBarDarkMode_MIUI(Landroid/app/Activity;Z)Z

    move-result p0

    return p0

    .line 746
    :cond_1
    invoke-static {}, Lus/zoom/androidlib/util/UIUtil;->isFlymeOS()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 747
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/UIUtil;->setStatusBarDarkMode_FlymeOS(Landroid/app/Activity;Z)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method private static setStatusBarDarkMode_FlymeOS(Landroid/app/Activity;Z)Z
    .locals 5

    .line 774
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 779
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 780
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    .line 781
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 782
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "meizuFlags"

    .line 783
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 784
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 785
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 786
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 787
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz p1, :cond_0

    or-int p1, v4, v2

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, v2, -0x1

    and-int/2addr p1, v4

    .line 793
    :goto_0
    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 794
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private static setStatusBarDarkMode_MIUI(Landroid/app/Activity;Z)Z
    .locals 8

    .line 753
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.view.MiuiWindowManager$LayoutParams"

    .line 756
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 758
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    .line 760
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "setExtraFlags"

    const/4 v4, 0x2

    .line 762
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 764
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-array v3, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    return v1
.end method

.method public static setTranslucentStatus(Landroid/app/Activity;Z)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 503
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x13

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    return v0

    .line 509
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/high16 p1, 0x4000000

    .line 513
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    .line 516
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_3

    const/high16 p1, -0x80000000

    .line 517
    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static showSimpleMessageDialog(Landroid/app/Activity;II)Landroid/app/Dialog;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-lez p1, :cond_1

    .line 479
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-lez p2, :cond_2

    .line 480
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    :cond_2
    invoke-static {p0, p1, v0}, Lus/zoom/androidlib/util/UIUtil;->showSimpleMessageDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static showSimpleMessageDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 458
    :cond_0
    new-instance v0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    move-result-object p0

    .line 460
    invoke-virtual {p0, p2}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 461
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setCancelable(Z)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    move-result-object p0

    sget p1, Lus/zoom/androidlib/R$string;->zm_btn_ok:I

    new-instance p2, Lus/zoom/androidlib/util/UIUtil$2;

    invoke-direct {p2}, Lus/zoom/androidlib/util/UIUtil$2;-><init>()V

    .line 462
    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    move-result-object p0

    .line 468
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->create()Lus/zoom/androidlib/widget/ZMAlertDialog;

    move-result-object p0

    .line 470
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->show()V

    return-object p0
.end method

.method public static showSimpleWaitingDialog(Landroid/app/Activity;I)Landroid/app/ProgressDialog;
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-lez p1, :cond_0

    .line 496
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 498
    :goto_0
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/UIUtil;->showSimpleWaitingDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showSimpleWaitingDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 486
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 487
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 488
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 489
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 490
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-object v0
.end method

.method public static showWaitingDialog(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 874
    invoke-static {p2}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 877
    :cond_0
    invoke-static {p1}, Lus/zoom/androidlib/widget/WaitingDialog;->newInstance(I)Lus/zoom/androidlib/widget/WaitingDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 878
    invoke-virtual {p1, v0}, Lus/zoom/androidlib/app/ZMDialogFragment;->setCancelable(Z)V

    .line 879
    invoke-virtual {p1, p0, p2}, Lus/zoom/androidlib/app/ZMDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static showWaitingDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 883
    invoke-static {p2}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 886
    :cond_0
    invoke-static {p1}, Lus/zoom/androidlib/widget/WaitingDialog;->newInstance(Ljava/lang/String;)Lus/zoom/androidlib/widget/WaitingDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 887
    invoke-virtual {p1, v0}, Lus/zoom/androidlib/app/ZMDialogFragment;->setCancelable(Z)V

    .line 888
    invoke-virtual {p1, p0, p2}, Lus/zoom/androidlib/app/ZMDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 0

    if-nez p0, :cond_0

    float-to-int p0, p1

    return p0

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static declared-synchronized startProximityScreenOffWakeLock(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lus/zoom/androidlib/util/UIUtil;

    monitor-enter v0

    .line 398
    :try_start_0
    sget-object v1, Lus/zoom/androidlib/util/UIUtil;->gProxiWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    sget-object v1, Lus/zoom/androidlib/util/UIUtil;->gProxiWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 399
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "power"

    .line 402
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    .line 404
    monitor-exit v0

    return-void

    :cond_1
    const/16 v1, 0x20

    .line 405
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lus/zoom/androidlib/util/UIUtil;

    .line 408
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":proximitiy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-virtual {p0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    sput-object p0, Lus/zoom/androidlib/util/UIUtil;->gProxiWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 410
    sget-object p0, Lus/zoom/androidlib/util/UIUtil;->gProxiWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_2

    .line 411
    sget-object p0, Lus/zoom/androidlib/util/UIUtil;->gProxiWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 413
    :try_start_3
    sget-object v1, Lus/zoom/androidlib/util/UIUtil;->TAG:Ljava/lang/String;

    const-string v2, "startProximityScreenOffWakeLock failure"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3}, Lus/zoom/androidlib/util/ZMLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 415
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stopProximityScreenOffWakeLock()V
    .locals 5

    const-class v0, Lus/zoom/androidlib/util/UIUtil;

    monitor-enter v0

    .line 418
    :try_start_0
    sget-object v1, Lus/zoom/androidlib/util/UIUtil;->gProxiWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 420
    :try_start_1
    sget-object v1, Lus/zoom/androidlib/util/UIUtil;->gProxiWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 422
    :try_start_2
    sget-object v2, Lus/zoom/androidlib/util/UIUtil;->TAG:Ljava/lang/String;

    const-string v3, "stopProximityScreenOffWakeLock failure"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lus/zoom/androidlib/util/ZMLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v1, 0x0

    .line 424
    sput-object v1, Lus/zoom/androidlib/util/UIUtil;->gProxiWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static updateFileFromDatabase(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    .line 901
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 902
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    .line 903
    invoke-static {p0, v1, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 904
    new-array v0, v0, [Ljava/lang/String;

    .line 905
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    new-instance p1, Lus/zoom/androidlib/util/UIUtil$3;

    invoke-direct {p1}, Lus/zoom/androidlib/util/UIUtil$3;-><init>()V

    .line 904
    invoke-static {p0, v0, v2, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    .line 912
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
