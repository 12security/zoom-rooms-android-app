.class Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;
.super Lus/zoom/androidlib/util/ZMAsyncTask;
.source "ZMStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMStorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncLoadAllStorage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/androidlib/util/ZMAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lus/zoom/androidlib/util/ZMAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/app/ZMStorageUtil$1;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;-><init>()V

    return-void
.end method

.method private getAllExternalStoragePaths()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    :try_start_0
    const-string v2, "mount"

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 189
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 190
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 191
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 194
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "secure"

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "asec"

    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "media"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "system"

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "cache"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "sys"

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "tmpfs"

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "shell"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "root"

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "acct"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "proc"

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "misc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "obb"

    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "fat"

    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "fuse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ntfs"

    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    const-string v3, " "

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 210
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 211
    aget-object v3, v2, v4

    invoke-static {v3}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_1

    .line 215
    :cond_4
    aget-object v3, v2, v4

    const-string v5, ".."

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 217
    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0, v3}, Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;->isUsbStorage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    :cond_5
    aget-object v2, v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 230
    invoke-static {v1}, Lus/zoom/androidlib/cache/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 231
    throw v0

    .line 230
    :catch_1
    :cond_6
    invoke-static {v1}, Lus/zoom/androidlib/cache/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 233
    invoke-static {}, Lus/zoom/androidlib/app/ZMStorageUtil;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getAllStorageInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;->getAllExternalStoragePaths()Ljava/util/List;

    move-result-object v1

    .line 136
    new-instance v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;

    invoke-direct {v2}, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;-><init>()V

    .line 137
    invoke-static {}, Lus/zoom/androidlib/app/ZMStorageUtil;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->path:Ljava/lang/String;

    const/4 v3, 0x1

    .line 138
    iput v3, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->type:I

    .line 139
    invoke-static {}, Lus/zoom/androidlib/app/ZMStorageUtil;->isInternalStorageMounted()Z

    move-result v3

    iput-boolean v3, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->mounted:Z

    .line 140
    iget-object v3, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->path:Ljava/lang/String;

    invoke-static {v3}, Lus/zoom/androidlib/app/ZMStorageUtil;->getAvailableMemSize(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->availableSize:J

    .line 141
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 144
    invoke-static {v2}, Lus/zoom/androidlib/app/ZMStorageUtil;->access$500(Ljava/lang/String;)Z

    move-result v3

    .line 145
    new-instance v4, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;

    invoke-direct {v4}, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;-><init>()V

    .line 146
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-direct {p0, v5}, Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;->isUsbStorage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    .line 149
    iput v5, v4, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->type:I

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    .line 151
    iput v5, v4, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->type:I

    .line 154
    :goto_1
    iput-object v2, v4, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->path:Ljava/lang/String;

    .line 155
    iput-boolean v3, v4, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->mounted:Z

    .line 156
    invoke-static {v2}, Lus/zoom/androidlib/app/ZMStorageUtil;->getAvailableMemSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v4, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->availableSize:J

    .line 157
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isUsbStorage(Ljava/lang/String;)Z
    .locals 2

    .line 164
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 168
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "usb"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;->getAllStorageInfo()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-static {}, Lus/zoom/androidlib/app/ZMStorageUtil;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    invoke-static {}, Lus/zoom/androidlib/app/ZMStorageUtil;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-static {p1}, Lus/zoom/androidlib/app/ZMStorageUtil;->access$100(Ljava/util/List;)V

    .line 128
    invoke-static {}, Lus/zoom/androidlib/app/ZMStorageUtil;->access$300()Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Lus/zoom/androidlib/app/ZMStorageUtil;->access$200()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 129
    invoke-static {p1}, Lus/zoom/androidlib/app/ZMStorageUtil;->access$402(Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;)Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;

    return-void
.end method
