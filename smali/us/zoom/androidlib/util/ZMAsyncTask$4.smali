.class synthetic Lus/zoom/androidlib/util/ZMAsyncTask$4;
.super Ljava/lang/Object;
.source "ZMAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/ZMAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$us$zoom$androidlib$util$ZMAsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 393
    invoke-static {}, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->values()[Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lus/zoom/androidlib/util/ZMAsyncTask$4;->$SwitchMap$us$zoom$androidlib$util$ZMAsyncTask$Status:[I

    :try_start_0
    sget-object v0, Lus/zoom/androidlib/util/ZMAsyncTask$4;->$SwitchMap$us$zoom$androidlib$util$ZMAsyncTask$Status:[I

    sget-object v1, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->RUNNING:Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    invoke-virtual {v1}, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lus/zoom/androidlib/util/ZMAsyncTask$4;->$SwitchMap$us$zoom$androidlib$util$ZMAsyncTask$Status:[I

    sget-object v1, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->FINISHED:Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    invoke-virtual {v1}, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
