.class public Lcom/android/launcher2/SceneInfo;
.super Ljava/lang/Object;
.source "SceneInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final TYPE_APPWIDGET:I = 0xe

.field public static final TYPE_HOTSEATICON:I = 0xf

.field public static final TYPE_ICON:I = 0xc

.field public static final TYPE_SHORTCUT:I = 0xd


# instance fields
.field private final ICON_BG_SUFFIX:Ljava/lang/String;

.field private final ICON_HOTSEAT:Ljava/lang/String;

.field private final ICON_MASK_SUFFIX:Ljava/lang/String;

.field private final ICON_SHORTCUT_SUFFIX:Ljava/lang/String;

.field private findCustomizedIcon:Z

.field private iconScale:F

.field private innerIconScale:F

.field private scene:Ljava/lang/String;

.field private type:I

.field private wallpaper:Ljava/lang/String;

.field private workspaceResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_icon_bg"

    .line 5
    iput-object v0, p0, Lcom/android/launcher2/SceneInfo;->ICON_BG_SUFFIX:Ljava/lang/String;

    const-string v0, "_icon_shortcut"

    .line 6
    iput-object v0, p0, Lcom/android/launcher2/SceneInfo;->ICON_SHORTCUT_SUFFIX:Ljava/lang/String;

    const-string v0, "_icon_mask"

    .line 7
    iput-object v0, p0, Lcom/android/launcher2/SceneInfo;->ICON_MASK_SUFFIX:Ljava/lang/String;

    const-string v0, "_icon_hotsaet"

    .line 9
    iput-object v0, p0, Lcom/android/launcher2/SceneInfo;->ICON_HOTSEAT:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/android/launcher2/SceneInfo;->iconScale:F

    .line 20
    iput v0, p0, Lcom/android/launcher2/SceneInfo;->innerIconScale:F

    const/16 v0, 0xc

    .line 25
    iput v0, p0, Lcom/android/launcher2/SceneInfo;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_icon_bg"

    .line 5
    iput-object v0, p0, Lcom/android/launcher2/SceneInfo;->ICON_BG_SUFFIX:Ljava/lang/String;

    const-string v0, "_icon_shortcut"

    .line 6
    iput-object v0, p0, Lcom/android/launcher2/SceneInfo;->ICON_SHORTCUT_SUFFIX:Ljava/lang/String;

    const-string v0, "_icon_mask"

    .line 7
    iput-object v0, p0, Lcom/android/launcher2/SceneInfo;->ICON_MASK_SUFFIX:Ljava/lang/String;

    const-string v0, "_icon_hotsaet"

    .line 9
    iput-object v0, p0, Lcom/android/launcher2/SceneInfo;->ICON_HOTSEAT:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/android/launcher2/SceneInfo;->iconScale:F

    .line 20
    iput v0, p0, Lcom/android/launcher2/SceneInfo;->innerIconScale:F

    const/16 v0, 0xc

    .line 25
    iput v0, p0, Lcom/android/launcher2/SceneInfo;->type:I

    .line 38
    iput-object p1, p0, Lcom/android/launcher2/SceneInfo;->scene:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/android/launcher2/SceneInfo;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_icon_bg"

    .line 5
    iput-object v0, p0, Lcom/android/launcher2/SceneInfo;->ICON_BG_SUFFIX:Ljava/lang/String;

    const-string v0, "_icon_shortcut"

    .line 6
    iput-object v0, p0, Lcom/android/launcher2/SceneInfo;->ICON_SHORTCUT_SUFFIX:Ljava/lang/String;

    const-string v0, "_icon_mask"

    .line 7
    iput-object v0, p0, Lcom/android/launcher2/SceneInfo;->ICON_MASK_SUFFIX:Ljava/lang/String;

    const-string v0, "_icon_hotsaet"

    .line 9
    iput-object v0, p0, Lcom/android/launcher2/SceneInfo;->ICON_HOTSEAT:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/android/launcher2/SceneInfo;->iconScale:F

    .line 20
    iput v0, p0, Lcom/android/launcher2/SceneInfo;->innerIconScale:F

    const/16 v0, 0xc

    .line 25
    iput v0, p0, Lcom/android/launcher2/SceneInfo;->type:I

    .line 33
    iput-object p1, p0, Lcom/android/launcher2/SceneInfo;->scene:Ljava/lang/String;

    .line 34
    iput-boolean p2, p0, Lcom/android/launcher2/SceneInfo;->findCustomizedIcon:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/launcher2/SceneInfo;
    .locals 0

    .line 155
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/SceneInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/android/launcher2/SceneInfo;->clone()Lcom/android/launcher2/SceneInfo;

    move-result-object p0

    return-object p0
.end method

.method public getIconBgResName()Ljava/lang/String;
    .locals 1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/launcher2/SceneInfo;->scene:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_icon_bg"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconHotSeatResName()Ljava/lang/String;
    .locals 1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/launcher2/SceneInfo;->scene:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_icon_hotsaet"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconMaskResName()Ljava/lang/String;
    .locals 1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/launcher2/SceneInfo;->scene:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_icon_mask"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconScale()F
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/launcher2/SceneInfo;->iconScale:F

    return p0
.end method

.method public getIconShortcutResName()Ljava/lang/String;
    .locals 1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/launcher2/SceneInfo;->scene:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_icon_shortcut"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInnerIconScale()F
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/launcher2/SceneInfo;->innerIconScale:F

    return p0
.end method

.method public getScene()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/launcher2/SceneInfo;->scene:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/android/launcher2/SceneInfo;->type:I

    return p0
.end method

.method public getWallpaper()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/launcher2/SceneInfo;->wallpaper:Ljava/lang/String;

    return-object p0
.end method

.method public getWorkspaceResId()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/launcher2/SceneInfo;->workspaceResId:I

    return p0
.end method

.method public isDefault()Z
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/android/launcher2/SceneInfo;->scene:Ljava/lang/String;

    const-string v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isFindCustomizedIcon()Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/android/launcher2/SceneInfo;->findCustomizedIcon:Z

    return p0
.end method

.method public isHotseat()Z
    .locals 1

    .line 118
    iget p0, p0, Lcom/android/launcher2/SceneInfo;->type:I

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShortcut()Z
    .locals 1

    .line 111
    iget p0, p0, Lcom/android/launcher2/SceneInfo;->type:I

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needCustomizedIcon()Z
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher2/SceneInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/SceneInfo;->isFindCustomizedIcon()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/SceneInfo;->isShortcut()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setFindCustomizedIcon(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/launcher2/SceneInfo;->findCustomizedIcon:Z

    return-void
.end method

.method public setHotseat(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/android/launcher2/SceneInfo;->type:I

    return-void
.end method

.method public setIconScale(F)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/launcher2/SceneInfo;->iconScale:F

    return-void
.end method

.method public setIconScale(Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/launcher2/SceneInfo;->iconScale:F

    return-void
.end method

.method public setInnerIconScale(F)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/android/launcher2/SceneInfo;->innerIconScale:F

    return-void
.end method

.method public setInnerIconScale(Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/launcher2/SceneInfo;->innerIconScale:F

    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/launcher2/SceneInfo;->scene:Ljava/lang/String;

    return-void
.end method

.method public setShortcut()V
    .locals 1

    const/16 v0, 0xd

    .line 107
    iput v0, p0, Lcom/android/launcher2/SceneInfo;->type:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/launcher2/SceneInfo;->type:I

    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/launcher2/SceneInfo;->wallpaper:Ljava/lang/String;

    return-void
.end method

.method public setWorkspaceResId(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/android/launcher2/SceneInfo;->workspaceResId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scene = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/SceneInfo;->scene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/SceneInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , findCustomizedIcon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher2/SceneInfo;->findCustomizedIcon:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
