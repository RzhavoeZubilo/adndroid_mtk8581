.class public Lcom/android/launcher2/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field static final NO_ID:I = -0x1


# instance fields
.field cellX:I

.field cellY:I

.field container:J

.field dropPos:[I

.field id:J

.field itemType:I

.field minSpanX:I

.field minSpanY:I

.field requiresDbUpdate:Z

.field screen:I

.field spanX:I

.field spanY:I

.field public title:Ljava/lang/CharSequence;

.field unreadNum:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 53
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->container:J

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 63
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 68
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v0, 0x1

    .line 73
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 78
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 83
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 88
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 108
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/ItemInfo;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 53
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->container:J

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 63
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 68
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v0, 0x1

    .line 73
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 78
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 83
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 88
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 108
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    .line 114
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 115
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 116
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 117
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 118
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 119
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 120
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 121
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 123
    invoke-static {p0}, Lcom/android/launcher2/LauncherModel;->checkItemInfo(Lcom/android/launcher2/ItemInfo;)V

    .line 124
    iget p1, p1, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    iput p1, p0, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    return-void
.end method

.method static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3

    .line 165
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 166
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 168
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 169
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 170
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 171
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Favorite"

    const-string v0, "Could not write icon"

    .line 173
    invoke-static {p0, v0}, Lcom/android/launcher2/uitl/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 131
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 180
    invoke-static {p1}, Lcom/android/launcher2/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    const-string v0, "icon"

    .line 181
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2

    .line 148
    iget v0, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    iget-wide v0, p0, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    iget v0, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    iget v0, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    iget v0, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    iget v0, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    iget p0, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "spanY"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " unreadNum= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method unbind()V
    .locals 0

    return-void
.end method

.method updateValuesWithCoordinates(Landroid/content/ContentValues;II)V
    .locals 0

    .line 158
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "cellX"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "cellY"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
