.class public final Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl$SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z

.field private final mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;


# direct methods
.method public constructor <init>(Landroid/app/ContextImpl$SharedPreferencesImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 3000
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3001
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 3002
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mClear:Z

    return-void
.end method

.method static synthetic access$600(Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3000
    invoke-direct {p0, p1}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method private commitToMemory()Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 3080
    new-instance v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;-><init>(Landroid/app/ContextImpl$1;)V

    .line 3081
    .local v6, mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;
    iget-object v8, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    monitor-enter v8

    .line 3085
    :try_start_0
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$300(Landroid/app/ContextImpl$SharedPreferencesImpl;)I

    move-result v9

    if-lez v9, :cond_0

    .line 3090
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    new-instance v10, Ljava/util/HashMap;

    iget-object v11, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v11}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v9, v10}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$402(Landroid/app/ContextImpl$SharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;

    .line 3092
    :cond_0
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    iput-object v9, v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    .line 3093
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$308(Landroid/app/ContextImpl$SharedPreferencesImpl;)I

    .line 3095
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$500(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->size()I

    move-result v9

    if-lez v9, :cond_5

    move v2, v12

    .line 3096
    .local v2, hasListeners:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 3097
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    .line 3098
    new-instance v9, Ljava/util/HashSet;

    iget-object v10, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v10}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$500(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v9, v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    .line 3102
    :cond_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3103
    :try_start_1
    iget-boolean v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v9, :cond_3

    .line 3104
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 3105
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    .line 3106
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 3108
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 3111
    :cond_3
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3112
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3113
    .local v5, k:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 3114
    .local v7, v:Ljava/lang/Object;
    if-ne v7, p0, :cond_6

    .line 3115
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3118
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3130
    :goto_2
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    .line 3131
    if-eqz v2, :cond_4

    .line 3132
    iget-object v9, v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3137
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #k:Ljava/lang/String;
    .end local v7           #v:Ljava/lang/Object;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9

    .line 3138
    .end local v2           #hasListeners:Z
    :catchall_1
    move-exception v9

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    :cond_5
    move v2, v13

    .line 3095
    goto/16 :goto_0

    .line 3120
    .restart local v0       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2       #hasListeners:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #k:Ljava/lang/String;
    .restart local v7       #v:Ljava/lang/Object;
    :cond_6
    const/4 v4, 0x0

    .line 3121
    .local v4, isSame:Z
    :try_start_3
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3122
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3123
    .local v1, existingValue:Ljava/lang/Object;
    if-eqz v1, :cond_7

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3127
    .end local v1           #existingValue:Ljava/lang/Object;
    :cond_7
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3136
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #isSame:Z
    .end local v5           #k:Ljava/lang/String;
    .end local v7           #v:Ljava/lang/Object;
    :cond_8
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 3137
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3138
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3139
    return-object v6
.end method

.method private notifyListeners(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 6
    .parameter "mcr"

    .prologue
    .line 3156
    iget-object v4, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 3177
    :cond_0
    :goto_0
    return-void

    .line 3160
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_4

    .line 3161
    iget-object v4, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 3162
    iget-object v4, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3163
    .local v2, key:Ljava/lang/String;
    iget-object v4, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 3164
    .local v3, listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    if-eqz v3, :cond_2

    .line 3165
    iget-object v4, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_2

    .line 3161
    .end local v3           #listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3171
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    :cond_4
    sget-object v4, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    new-instance v5, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$3;

    invoke-direct {v5, p0, p1}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$3;-><init>(Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public apply()V
    .locals 4

    .prologue
    .line 3050
    invoke-direct {p0}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v1

    .line 3051
    .local v1, mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;
    new-instance v0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$1;

    invoke-direct {v0, p0, v1}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$1;-><init>(Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    .line 3060
    .local v0, awaitCommit:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/app/QueuedWork;->add(Ljava/lang/Runnable;)V

    .line 3062
    new-instance v2, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$2;

    invoke-direct {v2, p0, v0}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$2;-><init>(Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;Ljava/lang/Runnable;)V

    .line 3069
    .local v2, postWriteRunnable:Ljava/lang/Runnable;
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v3, v1, v2}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$100(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 3075
    invoke-direct {p0, v1}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    .line 3076
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 3043
    monitor-enter p0

    .line 3044
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 3045
    monitor-exit p0

    return-object p0

    .line 3046
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()Z
    .locals 4

    .prologue
    .line 3143
    invoke-direct {p0}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v1

    .line 3144
    .local v1, mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$100(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 3147
    :try_start_0
    iget-object v2, v1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3151
    invoke-direct {p0, v1}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    .line 3152
    iget-boolean v2, v1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    :goto_0
    return v2

    .line 3148
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3149
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3029
    monitor-enter p0

    .line 3030
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3031
    monitor-exit p0

    return-object p0

    .line 3032
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3023
    monitor-enter p0

    .line 3024
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3025
    monitor-exit p0

    return-object p0

    .line 3026
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3011
    monitor-enter p0

    .line 3012
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3013
    monitor-exit p0

    return-object p0

    .line 3014
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3017
    monitor-enter p0

    .line 3018
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3019
    monitor-exit p0

    return-object p0

    .line 3020
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3005
    monitor-enter p0

    .line 3006
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3007
    monitor-exit p0

    return-object p0

    .line 3008
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"

    .prologue
    .line 3036
    monitor-enter p0

    .line 3037
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3038
    monitor-exit p0

    return-object p0

    .line 3039
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method