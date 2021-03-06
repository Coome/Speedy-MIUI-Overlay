.class Landroid/accounts/AccountManagerService$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManagerService;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 1535
    iput-object p1, p0, Landroid/accounts/AccountManagerService$DatabaseHelper;->this$0:Landroid/accounts/AccountManagerService;

    .line 1536
    invoke-static {}, Landroid/accounts/AccountManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1537
    return-void
.end method

.method private createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1572
    const-string v0, " CREATE TRIGGER accountsDelete DELETE ON accounts BEGIN   DELETE FROM authtokens     WHERE accounts_id=OLD._id ;   DELETE FROM extras     WHERE accounts_id=OLD._id ;   DELETE FROM grants     WHERE accounts_id=OLD._id ; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1582
    return-void
.end method

.method private createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1585
    const-string v0, "CREATE TABLE grants (  accounts_id INTEGER NOT NULL, auth_token_type STRING NOT NULL,  uid INTEGER NOT NULL,  UNIQUE (accounts_id,auth_token_type,uid))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1591
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1541
    const-string v0, "CREATE TABLE accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, password TEXT, UNIQUE(name,type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1548
    const-string v0, "CREATE TABLE authtokens (  _id INTEGER PRIMARY KEY AUTOINCREMENT,  accounts_id INTEGER NOT NULL, type TEXT NOT NULL,  authtoken TEXT,  UNIQUE (accounts_id,type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1555
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1557
    const-string v0, "CREATE TABLE extras ( _id INTEGER PRIMARY KEY AUTOINCREMENT, accounts_id INTEGER, key TEXT NOT NULL, value TEXT, UNIQUE(accounts_id,key))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1564
    const-string v0, "CREATE TABLE meta ( key TEXT PRIMARY KEY NOT NULL, value TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1568
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1569
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    const-string v1, "AccountManagerService"

    .line 1619
    const-string v0, "AccountManagerService"

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountManagerService"

    const-string v0, "opened database accounts.db"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1595
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1600
    add-int/lit8 p2, p2, 0x1

    .line 1603
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1604
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1605
    const-string v0, "DROP TRIGGER accountsDelete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1606
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1607
    add-int/lit8 p2, p2, 0x1

    .line 1610
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 1611
    const-string v0, "UPDATE accounts SET type = \'com.google\' WHERE type == \'com.google.GAIA\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1613
    add-int/lit8 p2, p2, 0x1

    .line 1615
    :cond_2
    return-void
.end method
